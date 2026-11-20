import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

Star[] stars;
Table table;
String language;
float duration;
PVector position;
String date;

void setup() {
  size(1000, 1000);
  background(250);
  table = loadTable("DearDataProjectData.csv", "header");
  stars = new Star[100];
  int i = 0;
  TableRow lastRow = table.getRow(table.getRowCount() - 1);
  TableRow firstRow = table.getRow(0);
  DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
  String minDate = firstRow.getString("DATE");
  String maxDate = lastRow.getString("DATE");
  LocalDate parsedMinDate = LocalDate.parse(minDate, formatter);
  LocalDate parsedMaxDate = LocalDate.parse(maxDate, formatter);
  long dateRangeAsDays = ChronoUnit.DAYS.between(parsedMinDate, parsedMaxDate);
  for (TableRow row : table.rows()) {
    stars[i] = new Star();
    date = row.getString("DATE");
    LocalDate parsedDate = LocalDate.parse(date, formatter);
    long daysFromMin = ChronoUnit.DAYS.between(parsedMinDate, parsedDate);
    float minMaxNormalisedDate = (float) daysFromMin / dateRangeAsDays;
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
      break;
    }

    i++;
  }
}

void draw() {
}
