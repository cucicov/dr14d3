import oscP5.*;
import netP5.*;
import de.voidplus.leapmotion.*;

OscP5 oscP5;
NetAddress module1;
NetAddress module2;
NetAddress module3;
NetAddress module4;
NetAddress module5;
NetAddress module6;
NetAddress module7;

boolean animation1Flag = true;
LeapMotion leap;
int idleId = 1;

void setup() {
  size(800, 500);
  background(255);
  frameRate(25);
  oscP5 = new OscP5(this, 7110);
  leap = new LeapMotion(this);
  
  module1 = new NetAddress("192.168.1.101", 7110);
  module2 = new NetAddress("192.168.1.102", 7110);
  module3 = new NetAddress("192.168.1.103", 7110);
  module4 = new NetAddress("192.168.1.104", 7110);
  module5 = new NetAddress("192.168.1.105", 7110);
  module6 = new NetAddress("192.168.1.106", 7110);
  module7 = new NetAddress("192.168.1.107", 7110);
}

void draw() {
  background(255);
  if (leap.getHands().size() <= 0) {
    if (idleId == 1) {
      animationIdle1();
    } else if (idleId == 2) {
      animationIdle2();
    } else if (idleId == 3) {
      animationIdle3();
    } else if (idleId == 4) {
      animationIdle4();
    }
  } else {
    int fps = leap.getFrameRate();
    int y=0, x=0;
    for (Hand hand : leap.getHands()) {
  
      idleId = (int)random(1, 5); // roll idle animation
      
      PVector handPosition       = hand.getPosition();
      y = (int)map(handPosition.y, 400, 50, 1, 7);
      x = (int)map(handPosition.x, -100, 1000, 0, 14);
      println("y:" + y);
      println("x:" + x);
      
      hand.draw();
    }
    
    for (int bandIndex = 1; bandIndex < 8; bandIndex++) {
        for (int pointIndex = 1; pointIndex < 7; pointIndex++) {
          if (bandIndex <= y) {
            if (pointIndex <= x && pointIndex >= x-6) {
              sendOsc(bandIndex, pointIndex, true);
            } else {
              sendOsc(bandIndex, pointIndex, false);
            }
          } else {
            // whole band is off
            sendOsc(bandIndex, pointIndex, false);
          }
        }
      }
  
    // ====================================================
    // 7. Devices
  
    for (Device device : leap.getDevices()) {
      float deviceHorizontalViewAngle = device.getHorizontalViewAngle();
      float deviceVericalViewAngle = device.getVerticalViewAngle();
      float deviceRange = device.getRange();
    }
  }
  
}

boolean isInteractionDetected() {
  return true; //TODO:
}

void animationIdle4() {
  animation1Flag = true;
  for (int i = 0; i < 5; i++) {
    sendOsc((int)random(1, 8), (int)random(1, 7), animation1Flag);
    delay(100);
  }
  delay(100);
  animation1Flag=false;
  animationIdle2();
  delay(100);
  
}

void animationIdle3() {
  for (int i = 1; i < 8; i++) {
    for (int j = 1; j <= i; j++) {
      sendOsc(i, j, animation1Flag);
      sendOsc(j, i, !animation1Flag);
    }
    delay(50);
  }
  animation1Flag = !animation1Flag;
}

void animationIdle2() {
  for (int i = 1; i < 8; i++) {
    for (int j = 1; j < 7; j++) {
      sendOsc(i, j, animation1Flag);
    }
    delay(50);
  }
  animation1Flag = !animation1Flag;
  if (animation1Flag) {
    delay(500);
  }
}

void animationIdle1() {
    for (int i = 1; i < 8; i++) {
      for (int j = 1; j < 7; j++) {
        sendOsc(i, j, animation1Flag);
        delay(20);
      }
    }
    animation1Flag = !animation1Flag;
    delay(500);
}

void sendOsc(int band, int point, boolean on) {
  NetAddress myRemoteLocation = null;
  switch (band) {
    case 1:
      myRemoteLocation = module1;
      break;
    case 2:
      myRemoteLocation = module2;
      break;
    case 3:
      myRemoteLocation = module3;
      break;
    case 4:
      myRemoteLocation = module4;
      break;
    case 5:
      myRemoteLocation = module5;
      break;
    case 6:
      myRemoteLocation = module6;
      break;
    case 7:
      myRemoteLocation = module7;
      break;
  }
  
  OscMessage myMessage = new OscMessage("/pi" + band + "/band");
  int command = point * 10;
  if (on) {
    command += 1;
  }
  myMessage.add(command); /* add an int to the osc message */
  oscP5.send(myMessage, myRemoteLocation); 
}