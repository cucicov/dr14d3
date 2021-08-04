import oscP5.*;
import netP5.*;
import de.voidplus.leapmotion.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

boolean animation1Flag = true;
LeapMotion leap;

void setup() {
  size(800, 500);
  background(255);
  frameRate(25);
  oscP5 = new OscP5(this, 7111);
  leap = new LeapMotion(this);
  
  myRemoteLocation = new NetAddress("127.0.0.1", 7111);
}

void draw() {
  background(255);
  //while(isInteractionDetected()) {
  //  animationIdle1();
  //}
  
  int fps = leap.getFrameRate();
  int y=0, x=0;
  for (Hand hand : leap.getHands ()) {

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
  OscMessage myMessage = new OscMessage("/pi" + band + "/band");
  myMessage.add(point); /* add an int to the osc message */
  myMessage.add(on ? 1 : 0); /* add an int to the osc message */
  oscP5.send(myMessage, myRemoteLocation); 
}