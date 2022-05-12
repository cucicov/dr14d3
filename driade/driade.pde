import de.voidplus.leapmotion.*;
import oscP5.*;
import netP5.*;
import processing.sound.*;
SoundFile file;

OscP5 oscP5;
NetAddress myRemoteLocation;
// ======================================================
// Table of Contents:
// ├─ 1. Callbacks
// ├─ 2. Hand
// ├─ 3. Arms
// ├─ 4. Fingers
// ├─ 5. Bones
// ├─ 6. Tools
// └─ 7. Devices
// ======================================================


LeapMotion leap;
HashMap<Integer, String> ipMap = new HashMap<Integer, String>();
int counter = 1;
ArrayList<Tree> trees = new ArrayList<Tree>();
int counterOutOfScope = 30;
float idleRandom = 0;
float idleChangeTimeout = 500;

SoundFile soundActive;
SoundFile soundIdle;
SoundFile soundLeave;
SoundFile soundEnter;
SoundFile soundEnters;

boolean isActive = false;

void setup() {
  size(800, 500);
  background(255);
  // ...
  
  soundActive = new SoundFile(this, "active.wav");
  soundIdle = new SoundFile(this, "idle.wav");
  soundLeave = new SoundFile(this, "leave.wav");
  soundEnter = new SoundFile(this, "enter.wav");
  soundEnters = new SoundFile(this, "enter_short.wav");

  leap = new LeapMotion(this);
  oscP5 = new OscP5(this, 7110);
  ipMap.put(1, "192.168.1.101");
  ipMap.put(2, "192.168.1.102");
  ipMap.put(3, "192.168.1.103");
  ipMap.put(4, "192.168.1.104");
  ipMap.put(5, "192.168.1.105");
  ipMap.put(6, "192.168.1.106");
  ipMap.put(7, "192.168.1.107");
  myRemoteLocation = new NetAddress("192.168.1.105", 7110);

  trees.add(new Tree(1, 1, true));
  trees.add(new Tree(2, 2, true));
  trees.add(new Tree(3, 3, true));
  trees.add(new Tree(4, 4, true));
  trees.add(new Tree(5, 5, true));
  trees.add(new Tree(6, 5, true));
  trees.add(new Tree(7, 5, true));
}


// ======================================================
// 1. Callbacks

void leapOnInit() {

   println("Leap Motion Init");
}
void leapOnConnect() {
   println("Leap Motion Connect");
}
void leapOnFrame() {
   //println("Leap Motion Frame");
}
void leapOnDisconnect() {
   println("Leap Motion Disconnect");
}
void leapOnExit() {
   println("Leap Motion Exit");
}


void draw() {

  background(255);
  // ...

  int fps = leap.getFrameRate();
  //println(fps);

  // driade idle
  if (leap.getHands().size() == 0) {

    
    // SOUND
    if (isActive) {
      soundLeave.play();
      isActive = false;
    }
    
    if (!soundIdle.isPlaying()) {
      soundIdle.loop();
    }
    
    if (soundActive.isPlaying() && frameCount % 5 == 0) {
      soundActive.stop();
    }
    
    counterOutOfScope--;
    //println(idleChangeTimeout);
    if (counterOutOfScope == 0 || idleChangeTimeout < 0){
      idleRandom = random(1);
      idleChangeTimeout = 500;
    }
    
    if (counterOutOfScope < 0) {
      idleChangeTimeout--;
      if (idleRandom < 0.33) {
        idleMode1();
      } else if (idleRandom > 0.33 && idleRandom < 0.66) {
        idleMode2();
      } else {
        idleMode3();
      }
    } else {
      startAllLeds();
    }
  } else {
    counterOutOfScope = 100;
  }
  
  if (counterOutOfScope < 15) {
    //stopAllLeds();
  }

  for (Hand hand : leap.getHands ()) {
    
    // SOUND
    if (!isActive) {
      soundEnter.play();
      soundEnters.play();
      isActive = true;
    }
    if (!soundActive.isPlaying()) {
      soundActive.loop();
    }
    
    if (soundIdle.isPlaying() && frameCount % 5 == 0) {
      soundIdle.stop();
    }
    


    // ==================================================
    // 2. Hand

    int     handId             = hand.getId();
    PVector handPosition       = hand.getPosition();
    //println((int)map(handPosition.y, 500, -50, 0, 7));
    // driade height
    
    PVector handStabilized     = hand.getStabilizedPosition();
    PVector handDirection      = hand.getDirection();
    PVector handDynamics       = hand.getDynamics();
    float   handRoll           = hand.getRoll();
    float   handPitch          = hand.getPitch();
    float   handYaw            = hand.getYaw();
    boolean handIsLeft         = hand.isLeft();
    boolean handIsRight        = hand.isRight();
    float   handGrab           = hand.getGrabStrength();
    float   handPinch          = hand.getPinchStrength();
    float   handTime           = hand.getTimeVisible();
    PVector spherePosition     = hand.getSpherePosition();
    float   sphereRadius       = hand.getSphereRadius();

    // --------------------------------------------------
    // Drawing
    hand.draw();


    // ==================================================
    // 3. Arm

    if (hand.hasArm()) {
      Arm     arm              = hand.getArm();
      float   armWidth         = arm.getWidth();
      PVector armWristPos      = arm.getWristPosition();
      PVector armElbowPos      = arm.getElbowPosition();
    }


    // ==================================================
    // 4. Finger

    //stopAllLeds();
    Finger  fingerThumb        = hand.getThumb();
    Tree tree1 = trees.get(1);
    if (!tree1.isTreeOff() && fingerThumb != null && fingerThumb.getPosition() != null) {
      //println((int)map(fingerThumb.getPosition().y, 500, 0, 0, 7));
      sendMessage(1, (int)map(fingerThumb.getPosition().y, 500, 0, 0, 7));
    }
    // or                        hand.getFinger("thumb");
    // or                        hand.getFinger(0);

    Finger  fingerIndex        = hand.getIndexFinger();
    Tree tree2 = trees.get(2);
    if (!tree2.isTreeOff() && fingerIndex != null && fingerIndex.getPosition() != null) {
      sendMessage(2, (int)map(fingerIndex.getPosition().y, 500, 0, 0, 7));
    }
    // or                        hand.getFinger("index");
    // or                        hand.getFinger(1);

    Finger  fingerMiddle       = hand.getMiddleFinger();
    Tree tree3 = trees.get(3);
    if (!tree3.isTreeOff() && fingerMiddle != null && fingerMiddle.getPosition() != null) {
      sendMessage(3, (int)map(fingerMiddle.getPosition().y, 500, 0, 0, 7));
    }
    Tree tree4 = trees.get(4);
    if (!tree4.isTreeOff() && fingerMiddle != null && fingerMiddle.getPosition() != null) {
      sendMessage(4, (int)map(fingerMiddle.getPosition().y, 500, 0, 0, 7));
    }
    // or                        hand.getFinger("middle");
    // or                        hand.getFinger(2);

    Finger  fingerRing         = hand.getRingFinger();
    Tree tree5 = trees.get(5);
    if (!tree5.isTreeOff() && fingerRing != null && fingerRing.getPosition() != null) {
      sendMessage(5, (int)map(fingerRing.getPosition().y, 500, 0, 0, 7));
    }
    // or                        hand.getFinger("ring");
    // or                        hand.getFinger(3);

    Finger  fingerPink         = hand.getPinkyFinger();
    Tree tree6 = trees.get(6);
    if (!tree6.isTreeOff() && fingerPink != null && fingerPink.getPosition() != null) {
      sendMessage(6, (int)map(fingerPink.getPosition().y, 500, 0, 0, 7));
      sendMessage(7, (int)map(fingerPink.getPosition().y, 500, 0, 0, 7));
    }
    // or                        hand.getFinger("pinky");
    // or                        hand.getFinger(4);

    int xPos = (int)map(handPosition.x, 700, -120, 14, 0);
    //println(xPos);
    if (xPos < 1) {
      ((Tree)trees.get(0)).setTreeOff(true);
      ((Tree)trees.get(1)).setTreeOff(true);
      ((Tree)trees.get(2)).setTreeOff(true);
      ((Tree)trees.get(3)).setTreeOff(true);
      ((Tree)trees.get(4)).setTreeOff(true);
      ((Tree)trees.get(5)).setTreeOff(true);
      ((Tree)trees.get(6)).setTreeOff(true);
      sendMessage(1, 0);
      sendMessage(2, 0);
      sendMessage(3, 0);
      sendMessage(4, 0);
      sendMessage(5, 0);
      sendMessage(6, 0);
      sendMessage(7, 0);
    } else if (xPos < 3) {
      ((Tree)trees.get(1)).setTreeOff(true);
      ((Tree)trees.get(2)).setTreeOff(true);
      ((Tree)trees.get(3)).setTreeOff(true);
      ((Tree)trees.get(4)).setTreeOff(true);
      ((Tree)trees.get(5)).setTreeOff(true);
      ((Tree)trees.get(6)).setTreeOff(true);
      sendMessage(2, 0);
      sendMessage(3, 0);
      sendMessage(4, 0);
      sendMessage(5, 0);
      sendMessage(6, 0);
      sendMessage(7, 0);
    } else if (xPos >= 3 && xPos < 5) {
      ((Tree)trees.get(2)).setTreeOff(true);
      ((Tree)trees.get(3)).setTreeOff(true);
      ((Tree)trees.get(4)).setTreeOff(true);
      ((Tree)trees.get(5)).setTreeOff(true);
      ((Tree)trees.get(6)).setTreeOff(true);
      sendMessage(3, 0);
      sendMessage(4, 0);
      sendMessage(5, 0);
      sendMessage(6, 0);
      sendMessage(7, 0);
    } else if (xPos >= 5 && xPos < 7) {
      ((Tree)trees.get(3)).setTreeOff(true);
      ((Tree)trees.get(4)).setTreeOff(true);
      ((Tree)trees.get(5)).setTreeOff(true);
      ((Tree)trees.get(6)).setTreeOff(true);
      sendMessage(4, 0);
      sendMessage(5, 0);
      sendMessage(6, 0);
      sendMessage(7, 0);
    } else if (xPos >= 7 && xPos <= 10) {
      ((Tree)trees.get(0)).setTreeOff(false);
      ((Tree)trees.get(1)).setTreeOff(false);
      ((Tree)trees.get(2)).setTreeOff(false);
      ((Tree)trees.get(3)).setTreeOff(false);
      ((Tree)trees.get(4)).setTreeOff(false);
      ((Tree)trees.get(5)).setTreeOff(false);
      ((Tree)trees.get(6)).setTreeOff(false);
    } else if (xPos > 10 && xPos <= 12) {
      ((Tree)trees.get(0)).setTreeOff(true);
      ((Tree)trees.get(1)).setTreeOff(true);
      sendMessage(1, 0);
      sendMessage(2, 0);
    } else if (xPos > 12 && xPos <= 14) {
      ((Tree)trees.get(0)).setTreeOff(true);
      ((Tree)trees.get(1)).setTreeOff(true);
      ((Tree)trees.get(2)).setTreeOff(true);
      ((Tree)trees.get(3)).setTreeOff(true);
      sendMessage(3, 0);
      sendMessage(4, 0);
    } else if (xPos > 14) {
      ((Tree)trees.get(0)).setTreeOff(true);
      ((Tree)trees.get(1)).setTreeOff(true);
      ((Tree)trees.get(2)).setTreeOff(true);
      ((Tree)trees.get(3)).setTreeOff(true);
      ((Tree)trees.get(4)).setTreeOff(true);
      sendMessage(5, 0);
    } 
    //println(xPos);
    
    //for (Finger finger : hand.getFingers()) {
    //  // or              hand.getOutstretchedFingers();
    //  // or              hand.getOutstretchedFingersByAngle();

    //  int     fingerId         = finger.getId();
    //  PVector fingerPosition   = finger.getPosition();
    //  PVector fingerStabilized = finger.getStabilizedPosition();
    //  PVector fingerVelocity   = finger.getVelocity();
    //  PVector fingerDirection  = finger.getDirection();
    //  float   fingerTime       = finger.getTimeVisible();

    //  // ------------------------------------------------
    //  // Drawing

    //  // Drawing:
    //  // finger.draw();  // Executes drawBones() and drawJoints()
    //  // finger.drawBones();
    //  // finger.drawJoints();

    //  // ------------------------------------------------
    //  // Selection

    //  switch(finger.getType()) {
    //  case 0:
    //    // System.out.println("thumb");
    //    break;
    //  case 1:
    //    // System.out.println("index");
    //    break;
    //  case 2:
    //    // System.out.println("middle");
    //    break;
    //  case 3:
    //    // System.out.println("ring");
    //    break;
    //  case 4:
    //    // System.out.println("pinky");
    //    break;
    //  }


    //  // ================================================
    //  // 5. Bones
    //  // --------
    //  // https://developer.leapmotion.com/documentation/java/devguide/Leap_Overview.html#Layer_1

    //  Bone    boneDistal       = finger.getDistalBone();
    //  // or                      finger.get("distal");
    //  // or                      finger.getBone(0);

    //  Bone    boneIntermediate = finger.getIntermediateBone();
    //  // or                      finger.get("intermediate");
    //  // or                      finger.getBone(1);

    //  Bone    boneProximal     = finger.getProximalBone();
    //  // or                      finger.get("proximal");
    //  // or                      finger.getBone(2);

    //  Bone    boneMetacarpal   = finger.getMetacarpalBone();
    //  // or                      finger.get("metacarpal");
    //  // or                      finger.getBone(3);

    //  // ------------------------------------------------
    //  // Touch emulation

    //  int     touchZone        = finger.getTouchZone();
    //  float   touchDistance    = finger.getTouchDistance();

    //  switch(touchZone) {
    //  case -1: // None
    //    break;
    //  case 0: // Hovering
    //    // println("Hovering (#" + fingerId + "): " + touchDistance);
    //    break;
    //  case 1: // Touching
    //    // println("Touching (#" + fingerId + ")");
    //    break;
    //  }
    //}


    // ==================================================
    // 6. Tools

//    for (Tool tool : hand.getTools()) {
//      int     toolId           = tool.getId();
//      PVector toolPosition     = tool.getPosition();
//      PVector toolStabilized   = tool.getStabilizedPosition();
//      PVector toolVelocity     = tool.getVelocity();
//      PVector toolDirection    = tool.getDirection();
//      float   toolTime         = tool.getTimeVisible();

//      // ------------------------------------------------
//      // Drawing:
//      // tool.draw();

//      // ------------------------------------------------
//      // Touch emulation

//      int     touchZone        = tool.getTouchZone();
//      float   touchDistance    = tool.getTouchDistance();

//      switch(touchZone) {
//      case -1: // None
//        break;
//      case 0: // Hovering
//        // println("Hovering (#" + toolId + "): " + touchDistance);
//        break;
//      case 1: // Touching
//        // println("Touching (#" + toolId + ")");
//        break;
//      }
//    }
  }


  // ====================================================
  // 7. Devices

  for (Device device : leap.getDevices()) {
    float deviceHorizontalViewAngle = device.getHorizontalViewAngle();
    float deviceVericalViewAngle = device.getVerticalViewAngle();
    float deviceRange = device.getRange();
  }
}

void idleMode1() { // TODO: check
  println("idle mode 1");
  stopAllLeds();
  ((Tree)trees.get(0)).setTreeOff(false);
  ((Tree)trees.get(1)).setTreeOff(false);
  ((Tree)trees.get(2)).setTreeOff(false);
  ((Tree)trees.get(3)).setTreeOff(false);
  ((Tree)trees.get(4)).setTreeOff(false);
  ((Tree)trees.get(5)).setTreeOff(false);
  ((Tree)trees.get(6)).setTreeOff(false);

  if (random(1) > 0.5) {
    int randomTree = (int)random(7) + 1;
    //OscMessage randomLineMessage = new OscMessage("/pi"+randomTree+"/band");
    int randomLine = (int)random(6) + 1; // TODO: check
    //randomLineMessage.add(randomLine * 10);
    //myRemoteLocation = new NetAddress(ipMap.get(randomTree), 7110);
    //oscP5.send(randomLineMessage, myRemoteLocation);
    sendMessage(randomTree, randomLine);
  }
  delay(10);
}


void idleMode2() {
  println("idle mode 2");
  //stopAllLeds();
  ((Tree)trees.get(0)).setTreeOff(false);
  ((Tree)trees.get(1)).setTreeOff(false);
  ((Tree)trees.get(2)).setTreeOff(false);
  ((Tree)trees.get(3)).setTreeOff(false);
  ((Tree)trees.get(4)).setTreeOff(false);
  ((Tree)trees.get(5)).setTreeOff(false);
  ((Tree)trees.get(6)).setTreeOff(false);

  while (leap.getHands().size() == 0) {
   
      for (int tree = 0; tree < 7; tree++) {
        Tree treeObj = trees.get(tree);
        if (!treeObj.isTreeOff()) {
          sendMessage(treeObj.getTreeNumber(), treeObj.getLed());
        }
        //println(treeObj.getTreeNumber() + ":" + treeObj.getLed());
        if (treeObj.isIncreaseLed()) {
          treeObj.setLed(treeObj.getLed() + 1);
        }
        if (!treeObj.isIncreaseLed()) {
          treeObj.setLed(treeObj.getLed() - 1);
        
        }
        if (treeObj.getLed() == 1) {
          treeObj.setIncreaseLed(true);
        }
        if (treeObj.getLed() == 6) {
          treeObj.setIncreaseLed(false);
        }
      delay(20);
    }
  }
}


void idleMode3() {
  println("idle mode 3");
  //stopAllLeds();
  ((Tree)trees.get(0)).setTreeOff(false);
  ((Tree)trees.get(1)).setTreeOff(false);
  ((Tree)trees.get(2)).setTreeOff(false);
  ((Tree)trees.get(3)).setTreeOff(false);
  ((Tree)trees.get(4)).setTreeOff(false);
  ((Tree)trees.get(5)).setTreeOff(false);
  ((Tree)trees.get(6)).setTreeOff(false);

  //while (leap.getHands().size() == 0 ) {
   stopAllLeds();
    int tree = (int)random(7);
    Tree treeObj = trees.get(tree);
    sendMessage(treeObj.getTreeNumber(), treeObj.getLed());
    if (treeObj.isIncreaseLed()) {
      treeObj.setLed(treeObj.getLed() + 1);
    }
    if (!treeObj.isIncreaseLed()) {
      treeObj.setLed(treeObj.getLed() - 1);
    
    }
    if (treeObj.getLed() == 1) {
      treeObj.setIncreaseLed(true);
    }
    if (treeObj.getLed() == 6) {
      treeObj.setIncreaseLed(false);
    }
    delay(150);
    
  //}
}

void sendMessage(int tree, int led) {
  OscMessage message = new OscMessage("/pi"+tree+"/band");
  NetAddress location = new NetAddress(ipMap.get(tree), 7110);
  
  
  //println("tree:" + ipMap.get(tree));
  for (int k=1; k<7; k++) {
    message.clear();
    message.setAddrPattern("/pi"+tree+"/band");
    if (k <= led) {
      message.add((k*10)+1);
      oscP5.send(message, location);
      //println((k*10)+1);
      delay(10);
    } else {
      message.add(k*10);
      oscP5.send(message, location);
      //println(k*10);
      delay(10);
    }
  }
  
  if (led == 0) {
    delay(30);
  }
}

void stopAllLeds() {
  println("stop all leds");
  for (int i = 1; i < 8; i++) { // stop all other leds
    myRemoteLocation = new NetAddress(ipMap.get(i), 7110);
    OscMessage line = new OscMessage("/pi"+i+"/band");
    line.add(0);
    oscP5.send(line, myRemoteLocation);
  }
  delay(50);
}

void startAllLeds() {
  println("start all leds");
  for (int i = 1; i < 8; i++) { // stop all other leds
    myRemoteLocation = new NetAddress(ipMap.get(i), 7110);
    OscMessage line = new OscMessage("/pi"+i+"/band");
    for (int j = 1; j < 7; j++) {
      line.clear();
      line.setAddrPattern("/pi"+i+"/band");
      line.add((j * 10) + 1);
      oscP5.send(line, myRemoteLocation);      
    }
  }
  delay(50);
}
