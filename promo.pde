int xp = 100;// den styrer x aksen tættest mod orego(0)
int xv = 50;// den styrer x aksen i midten.
int y = 5;// den styrer den første y akse altså tættest mod venstre side af skærmen.
int step = 1;//laver en funktion som er bygget op på at den via y og x skal gå til højre eller venstre, så den kind of "wiggler".
int yp = 50; //styrer den nedeste y-værdi.
int yv = 95;// styrer den midterste y-værdi
int x = 96; // styrer x-værdi yderst mod højre side af din skærm.
void setup() {//laver et setup som kører 1 gang, der har et vindue på 300 x 300 pixels.
  size(300, 300);
  noStroke();
}


void draw() {//er en funktion der kører 30 gange i sekunder (eller så 60) og gør at den tegner de forskellige firkanter og dens farve.
 
  background(0, 0, 0);
  fill(150);
  rect(xp,y, 40, 40);//øverste hjørne
  fill(150);
   rect(xp,yv,40,40);// nedenunder øverste hjørne
   fill(150);
   rect(xp,yp,40,40);//nederste firkant
   fill(200);
   rect(xv,y,40,40);// til højre for øverste hjørne rektangel. XV er midterrækken mod venstre.
   fill(255,255,51);
   rect(xv,yv,40,40);// den nederste firkant i midten
   fill(255,255,102);
   rect(xv,yp,40,40);// den allermeste midterste.
   fill(255,255,170);
   rect(x,y,40,40);//firkant i  i højre neder side.
   fill(255,255,2);
   rect(x,yv,40,40);
   fill(255,255,81);
   rect(x,yp,40,40);
   x+=step;//sammen med step gør det at if funktionen bevæger sig frem og tilbage med mindre den er større end 297 pixels(kig width).
   yp+=step;
  y+=step;
  xp+=step;
  yv+=step;
  xv+=step;
  if (xp > width-297) {
    xp = width-297;
    step = -1;  
  }
  if (xp < 0) {
    xp = 0;
    step = 1;
   

  }
  }
//note : opgaven tog mig samlet 1,5 time, og tænkte 9 firkanter var nok at påvise at jeg kunne lave programmet i videoen. 
