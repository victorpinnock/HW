// Inspiered by Ann H Murray’s Archimedean Spiral https://www.atariarchives.org/artist/sec1.php
// https://www.openprocessing.org/user/49963 Work by liriel saarinen
// https://forum.processing.org/two/discussion/13125/for-loop-to-make-a-spiral Comment By TfGuy44 October 2015 
// Helped by Seth Crider

void setup() {
  size(900, 900);
  frameRate(1990);
}
 
void draw() {
stroke(random(250), random(250), random(250));
  translate(width/2, height/2);
   rotate( +float(frameCount)/ 1.44444
   );
  for (float t = random(1); t < 720*TWO_PI; t+=PI+cos(-9
  )/64
  )
  {
    float x = t * cos(t);
    float y = t * sin(t/222.22);
    point(x, y);
  }
}
