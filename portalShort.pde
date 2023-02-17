int cube_y = -20;
float velocity, velocity_dir, cube_rot = 1;
PImage bg, fg, cube;

void setup() {
  size(300, 300);
  bg= loadImage("https://raw.githubusercontent.com/xM4ddy/portal-animation/30a6e5de070a599b394cde64b0ca16d77ddff1c2/bg.png", "png");
  fg= loadImage("https://raw.githubusercontent.com/xM4ddy/portal-animation/30a6e5de070a599b394cde64b0ca16d77ddff1c2/fg.png", "png");
  cube = loadImage("https://raw.githubusercontent.com/xM4ddy/portal-animation/30a6e5de070a599b394cde64b0ca16d77ddff1c2/cube.png", "png");
}

void draw() {
  rect(0, 0, width, height);
  
  image(bg, 0, 0, width, height);
  
  pushMatrix();
    velocity += (0.08 * velocity_dir);
    cube_y += velocity;
    if (cube_y > 300) 
      cube_y = -38;
    if (velocity > 22)
      velocity_dir = -1;
    else if (velocity < 4)
      velocity_dir = 1;
    translate(150, cube_y);
    rotate(radians(cube_rot+=2));
    image(cube, -19, -19, 38, 38);
  popMatrix();
  
  image(fg, 0, 0, width, height);
}
