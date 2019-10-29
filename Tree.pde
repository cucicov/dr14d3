class Tree{
  int treeNumber = 0;
  int led = 0;
  boolean increaseLed;
  boolean treeOff = false;
  
  public Tree(int treeNumber) {
    this.treeNumber = treeNumber;
  }
  
  public Tree(int treeNumber, int led, boolean increaseLed) {
    this.treeNumber = treeNumber;
    this.led = led;
    this.increaseLed = increaseLed;
  }
  
  public boolean isIncreaseLed() {
    return this.increaseLed;
  }
  
  public void setIncreaseLed(boolean increaseLed) {
    this.increaseLed = increaseLed;
  }
  
  public int getLed() {
    if(treeOff) {
      return 0;
    }
    return led;
  }
  
  public void setLed(int led) {
    this.led = led;
  }
  
  public int getTreeNumber() {
    return treeNumber;
  }
  
  public void setTreeNumber(int treeNumber) {
    this.treeNumber = treeNumber;
  }
  
  public void setTreeOff(boolean treeOff) {
    this.treeOff = treeOff;
  }
  
  public boolean isTreeOff() {
    return this.treeOff;
  }
}