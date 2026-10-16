class Visualiser
{
  PVector position;
  float textSize;
  color colour;
  Table table;
  float duration;
  String date;
  String language;
  String purpose;

  Visualiser()
  {
    position = new PVector(width/6, height/6);
    textSize = 20;
    colour = color(0);
    table = loadTable("DearDataProjectData.csv", "header");
  }

  void display() {
    int i = 0;
    for (TableRow row : table.rows()) {
      duration = (row.getFloat("DURATION"));
      String durationRounded = nf(duration, 0, 2);
      date = row.getString("DATE");
      language = row.getString("LANGUAGE");
      purpose = row.getString("PURPOSE");


      fill(colour);
      textAlign(CENTER);
      textSize(textSize);
      text(durationRounded, position.x, position.y + (i * 30) );
      text(date, position.x + 80, position.y + (i * 30));
      text(language, position.x + 180, position.y + (i * 30));
      text(purpose, position.x + 300, position.y + (i * 30));
      i++;
    }
  }
}
