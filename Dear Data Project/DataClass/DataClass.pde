class Star
{
  PVector position;
  String colorKey;
  color starColor;
  float starSize;

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

  void displayStars() {
    fill(starColor);
    noStroke();
  }
  //duration = (row.getFloat("DURATION"));
  //String durationRounded = nf(duration, 0, 2);
  //date = row.getString("DATE");

  //purpose = row.getString("PURPOSE");
}
