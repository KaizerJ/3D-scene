
import peasy.*;

PeasyCam cam;

PShape room;
PImage walls;

int ambientLightMode = 1;     // Default WHITE LIGHT
int directionalLightMode = 3; // Default DISABLED
int pointLightMode = 1;       // Default FOLLOW_CAMERA

int ligthColor = 0;           // WHITE LIGHT

int sculpture = 0;

PShape[] sculptures;
int[] xTranslate = {-30, -50, -10};
int[] yTranslate = {-40, -50, -10};
int[] zTranslate = {-50, -30, -30};
float[] xRotate = {PI/2, PI/2, PI/2};
float[] yRotate = {0, 0, 0};
float[] zRotate = {PI, 0, 0};

float[] minDist = {150, 100, 100};

float[] posDir = {0, 0, 1};
float[] posPoint = {0, 0, 1};

int[][] colors = {{128,128,128},
                  {255, 160, 122},
                  {152, 251, 152},
                  {135, 206, 235}};

void setup() {
  size(900,700,P3D);
  cam = new PeasyCam(this, 200);
  cam.setMinimumDistance(150);
  cam.setMaximumDistance(500);
  
  sculptures = new PShape[3]; 
  
  sculptures[0] = loadShape("bust-of-nefertiti-at-the-neues-museum-berlin-1.obj");
  //sculptures[1] = loadShape("Bishop.obj");
  //sculptures[2] = loadShape("big-ben-f.obj");
  
  walls = loadImage("empty-white-room.jpg");
  beginShape();
  room = createShape(BOX, 1000);
  room.setTexture(walls);
  endShape();

}
void draw() {
  background(0);
  
  lightFalloff(1, 0, 0);
  lightSpecular(0, 0, 0);
  
  switch ( ambientLightMode ){
    case 1: ambientLight(128, 128, 128);
            break;
    case 2: ambientLight(255, 160, 122);
            break;
    case 3: ambientLight(152, 251, 152);
            break;
    case 4: ambientLight(135, 206, 235);
            break;
    case 5: ambientLight(0, 0, 0);
            break;
  }
  
  switch ( directionalLightMode ){
    case 1: posDir = cam.getPosition();
            directionalLight(colors[ligthColor][0], colors[ligthColor][1], colors[ligthColor][2],
                              -posDir[0], -posDir[1], -posDir[2]);
            break;
    case 2: directionalLight(colors[ligthColor][0], colors[ligthColor][1], colors[ligthColor][2], 
                              -posDir[0], -posDir[1], -posDir[2]);
            break;
    case 3: 
            break;
  }
  
  switch ( pointLightMode ){
    case 1: posPoint = cam.getPosition();
            pointLight(colors[ligthColor][0], colors[ligthColor][1], colors[ligthColor][2], 
                        posPoint[0], posPoint[1], posPoint[2]);
            break;
    case 2: pointLight(colors[ligthColor][0], colors[ligthColor][1], colors[ligthColor][2], 
                        posPoint[0], posPoint[1], posPoint[2]);
            break;
    case 3: 
            break;
  }
  
  
  fill(255);
  shape(room);
  
  
  rotateX(xRotate[sculpture]);
  rotateY(yRotate[sculpture]);
  rotateZ(zRotate[sculpture]);
  
  translate(xTranslate[sculpture],yTranslate[sculpture],zTranslate[sculpture]);
  
  ambient(50);

  shape(sculptures[sculpture]);
}

void keyReleased(){
  if( key == 'a' || key == 'A' ){
    if( ambientLightMode < 5 ) ambientLightMode++;
    else ambientLightMode = 1;
  }
  
  if( key == 'd' || key == 'D' ){
    if( directionalLightMode < 3 ) directionalLightMode++;
    else directionalLightMode = 1;
  }
  
  if( key == 'p' || key == 'P' ){
    if( pointLightMode < 3 ) pointLightMode++;
    else pointLightMode = 1;
  }
  
  if( key == 'c' || key == 'C' ){
    if( ligthColor < 3 ) ligthColor++;
    else ligthColor = 0;
  }
}
