Star[] stars;
Table table;
String language;
float duration;

void setup() {
  size(1000, 1000);
  background(250);
  table = loadTable("DearDataProjectData.csv", "header");
  stars = new Star[100];
  int i = 0;
  for (TableRow row : table.rows()) {
    stars[i] = new Star();
    language = row.getString("LANGUAGE");
    duration = row.getFloat("DURATION");
    stars[i].setSize(duration);
    switch(language) {
    case "Java":
      stars[i].setColor(#007396);
      break;
    case "Rust":
      stars[i].setColor(#D34516);
      break;
    case "Python":
      stars[i].setColor(#FFD43B);
      break;
    case "Typescript":
      stars[i].setColor(#3178C6);
    }
    i++;
  }
}

void draw() {
}
