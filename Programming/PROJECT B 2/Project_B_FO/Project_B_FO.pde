

//loadTable()
Table table;

int rowCount; 
int d=10; 

boolean showGraph1 = true; 


void setup() {
  table= loadTable("divorce.csv", "header");
  rowCount= table.getRowCount();
  smooth();
  println(table.getRowCount() + " total rows in table");

  size(1000,850);
  background(255,255,255);





}

void draw() {
if(showGraph1){
ScatterPlot(); 
}else{
barGraph();
}


} 

void setupChart(String title){
  background(255);
  fill(0);
  stroke(0);
;
  line( 50,70, 50, 500);
  line( 50, 500, 700 , 500);
  
  text( " Year " , 407,557);
  text ( " Percentage ", 24,34); 

  text(title, width/2, 10);  
}
void  barGraph()
{
  setupChart("Bar Graph");
// gets info from the table and plots points relative to it
  for(int row = 0; row < rowCount; row++){
//gets the name of the data  
   String name = table.getString(row, 0); 
   
//gets the x, year and sets it up 
int year = table.getInt(1, row ); 
float x = map(year, 2000,2008, 50, 600); 
 text( year, x, 520); 
  
 //gets the y, %, and sets it up
 float percentage = table.getFloat(2, row); 
float y = map(percentage, 10.6,12.6, 400, 100);
println(" y; " +year+" s: "+percentage);
text(percentage, 3, y);

noStroke();
fill(0);
rect(x, 500, d, -(500 - y));
//ellipse(x, y, d, d);

textAlign(LEFT);
fill(0);


 
 }
  
}
void ScatterPlot()
{
 setupChart("Scatter Plot"); 
// gets info from the table and plots points relative to it
  for(int row = 0; row < rowCount; row++){
//gets the name of the data  
   String name = table.getString(row, 0); 
   
//gets the x, year and sets it up 
int year = table.getInt(1, row ); 
float x = map(year, 2000,2008, 50, 600); 
 text( year, x, 520); 
  
 //gets the y, %, and sets it up
 float percentage = table.getFloat(2, row); 
float y = map(percentage, 10.6,12.6, 400, 100);
println(" y; " +year+" s: "+percentage);
text(percentage, 3, y);

noStroke();
fill(0);
ellipse(x, y, d, d);

fill(0);
if(dist(x,y,mouseX,mouseY) < 3) {
  textAlign(CENTER);
  text(year,x,y-10);
  text(percentage,90,y);
  


textAlign(LEFT);
fill(0);

 
 
}
 }
  
}
void keyPressed(){
showGraph1 = !showGraph1;
}

void mouseClicked()
{
println("x: " + mouseX + " y " + mouseY);



}
