class Star
{
  PVector position;
  String colorKey;
  color starColor;
  float starSize;
  PVector starPosition;

  Star()
  {
    starPosition = new PVector(0, height/2.0);
  }

  void setColor(color newColor) {
    starColor = newColor;
  }

  void setSize(float size) {
    starSize = size;
  }

  void setPosition(int width, float normalisedDate) {
    starPosition.x = width * normalisedDate;
  }

  void displayStar() {
    fill(starColor);
    noStroke();
    ellipse(starPosition.x, starPosition.y, starSize * 15, starSize * 15);
  }
}
