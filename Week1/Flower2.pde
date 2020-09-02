void setup() {
  size(800, 800);
  frameRate(160);
}
 
void draw() {
  translate(width/2, height/2);
   rotate( +float(frameCount)/ 1/3
   );
  for (float t = 1/8; t < 720*TWO_PI; t+=PI+cos(-5
  )/143
  )
  {
    float x = t * cos(t+.899898998989
    );
    float y = t * sin(t/1
    );
    point(x, y);
  }
}
