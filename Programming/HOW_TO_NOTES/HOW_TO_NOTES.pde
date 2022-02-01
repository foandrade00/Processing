//How To Notes
size (600, 500);
//println ("Hello, World!");
//smooth();
background(255,0,0); // red background
//ellipse(300, 100, 100, 100); 
// comment above is to make circle
stroke(#607F9C);
strokeWeight(10);

point(50,50);
point(70,50);
point(100,100);
point(150,100);
point(200,100);
point(250,100);
point(300,100);
point(350,100);
point(400,100);
// to draw points ^
// now to draw lines look down
// background(9F9694); color
// stroke(#791F33); dark red line

strokeWeight(8);
//line (100, 50, 100, 150);
//line (100, 50, 100, 150);
//line (100, 50, 100, 150);
//line (100, 50, 100, 150);
//line (100, 50, 100, 150);
//line (100, 50, 100, 150);
//line (100, 50, 100, 150);

// to draw ellipse below
//smooth();
// background(#678CB); teal color
//noStroke(); is to get rid of lines around ellipse
//ellipse (100, 100, 150, 100); (x, y, length, width);
// ellipseMode(CORNER);
//fill(B3B597);
//ellipse(500, 100, 150, 150); 3 lines of code make it circle and corner, color is yellow

// drawing arcs
 //size(600, 200);
smooth();
strokeWeight(5);

//Form: arc(x, y, width, height, start, stop);
//arc(100, 100, 75, 0, PI);
//fill(0, 191, 255); sky blue
// no stroke();
//arc(367, 100, 75,75, 0, radians(270));

// drawing squares/rectangles
//size(600, 200);
//smooth();
//background(#FFFCD);(light yellow)
//strokeWeight(5);

rectMode(CORNER); // default
rect(60, 60, 80, 80);

rectMode(CENTER); // default
noStroke();
fill(#CC5C54);
rect(300, 100, 80, 80);

rectMode(CORNERS);
stroke(#F69162);
noFill();
rect(460, 60, 540, 140);

// drawing quadrangles
// draw diamond
smooth();
// background(#0C2550);
strokeWeight(5);
quad(150, 50, 200, 100, 150,150, 100, 100);

//DRAWING TRIANGLES
smooth();
// background(#302F2F); dark grey
strokeWeight(5);

triangle(150, 50, 200, 150, 100, 150);

// drawing polygons!!!!!
//size of window size (600, 200);
smooth();
//background(#D9C6B0); TAN COLOR
 beginShape();
 vertex(200, 150);
 vertex(150, 125);
 vertex(150, 75);
 vertex(200, 50);
 vertex(250, 75);
 vertex(250, 125);
endShape(CLOSE);

// drawing bezier
// The first Curve
stroke(#791F33);
strokeWeight(3);
bezier(100, 50, 250, 50, 100, 150, 250, 150);
