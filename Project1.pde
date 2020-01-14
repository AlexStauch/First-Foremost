
int frames = 0;


void setup(){
  //size(1100, 1100, P3D); //P3D is necessary for 3D rendering
  fullScreen(P3D, 2);

}

void draw(){
  frames++;
  frames = frames%10003;

  
  
  float rotationAmount = radians(frames);
  println(frames);
  background(7);
  stroke((189), random(35), random(196), frames);
  strokeWeight(frames%49);
  directionalLight(random(224), (189), (84), random(frames%14), 0, 0);
  directionalLight((84), random(140), (217), random(frames%-4), 0, 0);
  directionalLight((35), (203), random(154), 0, 0, -1);
  translate(width/2, height/2, 0);
  rotateX(rotationAmount);
  rotateY(rotationAmount);
  fill(252);
  sphereDetail(7);
  sphere(frames * 7);

  if (frames > 196){
    for(int i = 0; i < 49; i++){
  //stuff for secondary shape
    pushMatrix();
    translate(width/2, height/2, 0);
    fill(252);
    sphereDetail(14);
    sphere(frames/7 * i);
  //end of secondary shape  
    popMatrix();
    }
  }  
  
  if (frames > 392){
    for(int i = 0; i < 49; i++){
  //stuff for tertiary shape
    pushMatrix();
    translate(width/2 , width/2 , 0);
    fill(252);
    sphereDetail(28);
    sphere(frames * (7 * i));
  //end of tertiary shape  
    popMatrix();
    }
  }  
  
  println(frameRate);
}
