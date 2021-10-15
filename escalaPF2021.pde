ArrayList<PVector> vertices;
/*
  1  0  0
  0  1  0
  -200  -200  1
*/
PMatrix2D m1=new PMatrix2D(1,0,-200,0,1,-200);
/*
  2  0  0
  0  2  0
  0  0  1
*/
PMatrix2D m2=new PMatrix2D(2,0,0,0,2,0);

/*
  1  0  0
  0  1  0
  200  200  1
*/
PMatrix2D m3=new PMatrix2D(1,0,200,0,1,200);


void setup(){
size(800,600);
  strokeWeight(3);
  vertices=new ArrayList();
  vertices.add(new PVector(150,150));
  vertices.add(new PVector(250,150));
  vertices.add(new PVector(250,250));
  vertices.add(new PVector(150,250));
  //pm x=200 y=200
  
  
  //producto de matrices
  m2.apply(m1);
  m3.apply(m2);
  
  for(PVector v:vertices){
    m3.mult(v,v);
  }
  
}

void draw(){
pintar();
circle(200,200,10);
}

void pintar(){
  beginShape();
  for(PVector v:vertices){
     vertex(v.x,v.y);
  }
  endShape(CLOSE);
}
