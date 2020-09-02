// Inspiered by Ann H Murray’s Archimedean Spiral https://www.atariarchives.org/artist/sec1.php
// https://www.openprocessing.org/user/49963 Work by liriel saarinen
// https://forum.processing.org/two/discussion/13125/for-loop-to-make-a-spiral Comment By TfGuy44 October 2015 

void setup() {
  size(900, 900);
  frameRate(333322);
}
 
void draw() {

  translate(width/2, height/2);
   rotate( +float(frameCount)/ 1.44444
   );
  for (float t = random(3); t < 720*TWO_PI; t+=PI+tan(-9
  )/46
  )
  {
    float x = t * cos(t
    );
    float y = t * sin(t/222.22
    );
    point(x, y);

  }
}
