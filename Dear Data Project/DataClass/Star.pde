class Star
{
  PVector position;
  String colorKey;
  color starColor;
  float starSize;
  PVector starPosition;

  Star()
  {
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
  //context = row.getString("CONTEXT");
}
