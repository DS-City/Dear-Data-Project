class Star
{
  PVector position;
  String colorKey;
  color starColor;
  float starSize;
  PVector starPosition;

  Star()
  {
    position = new PVector(width/6, height/6);
  }

  void setColor(color newColor) {
    starColor = newColor;
  }

  void setSize(float newSize) {
    starSize = newSize;
  }

  void setPosition(PVector newPosition) {
    starPosition = newPosition;
  }

  void displayStars() {
    fill(starColor);
    noStroke();
  }
  //date = row.getString("DATE");
  //purpose = row.getString("PURPOSE");
}
