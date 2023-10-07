float ho1 = 500;
float vo1 = 500;
float ho2_1 = 550;
float ho2_2 = 650;
float vo2_1 = 250;
float vo2_2 = 900;
float ho3 = 200;
float vo3_1 = 450;
float vo3_2 = random (vo1+300, width-30);
float vo3_3 = random (vo1+400, width-30);
float ho4_1 = 700;
float ho4_2 = 600;
float vo4 = random (vo2_1+30, vo1-30);
float vo5_1 = 350;
float vo5_2 = 700;
float ho6 = 550;

boolean ho1d = false;
boolean vo1d = true;
boolean ho2_1d = true;
boolean ho2_2d = true;
boolean vo2_1d = true;
boolean vo2_2d = true;
boolean ho3d = true;
boolean vo3_1d = true;
boolean vo3_2d = true;
boolean vo3_3d = true;
boolean ho4_1d = true;
boolean ho4_2d = true;
boolean vo4d = true;
boolean vo5_1d = true;
boolean vo5_2d = true;
boolean ho6d = true;

void setup() {
    size(1200, 750);
}

void draw() {
    background(255);
    rect(0, 0, width, height);
    strokeWeight(10);

//h1    
    strokeWeight(20);
    if(ho1 <= 100) {
        ho1d = true;
    }
    if (ho1 > height-400) {
        ho1d = false;
    }
    if(ho1d == true) {
        ho1 = ho1 + 0.1;
    }else if(ho1d == false) {
        ho1 = ho1 - 0.1;
    }
    line(0, ho1, width, ho1); 
    
//v1    
    strokeWeight(30);
    if(vo1 <= 300) {
        vo1d = true;
    }
    if (vo1 > width-300 ) {
        vo1d = false;
    }
    if(vo1d == true) {
        vo1 = vo1 + 0.1;
    }else if(vo1d == false) {
        vo1 = vo1 - 0.1;
    }
    line(vo1, 0, vo1, height);
    
//h2_1    
    strokeWeight(20);
    if(ho2_1 <= ho1+50) {
        ho2_1d = true;
    }
    if (ho2_1 > ho4_2-50) {
        ho2_1d = false;
    }
    if(ho2_1d == true) {
        ho2_1 = ho2_1 + 0.2;
    }else if(ho2_1d == false) {
        ho2_1 = ho2_1 - 0.2;
    }
    line(0, ho2_1, vo1, ho2_1);
    
//h2_2    
    strokeWeight(20);
    if(ho2_2 <= 580) {
        ho2_2d = true;
    }
    if (ho2_2 > height-50) {
        ho2_2d = false;
    }
    if(ho2_2d == true) {
        ho2_2 = ho2_2 + 0.2;
    }else if(ho2_2d == false) {
        ho2_2 = ho2_2 - 0.2;
    }
    line(vo1, ho2_2, width, ho2_2);
    
//v2_1    
    strokeWeight(20);
    if(vo2_1 <= 130) {
        vo2_1d = true;
    }
    if (vo2_1 > vo3_1-70) {
        vo2_1d = false;
    }
    if(vo2_1d == true) {
        vo2_1 = vo2_1 + 0.2;
    }else if(vo2_1d == false) {
        vo2_1 = vo2_1 - 0.2;
    }
    line(vo2_1, 0, vo2_1, ho1);
    
//v2_2
    strokeWeight(20);
    if(vo2_2 <= 600 ||vo2_2 <= vo1+150) {
        vo2_2d = true;
    }
    if (vo2_2 > 1000) {
        vo2_2d = false;
    }
    if(vo2_2d == true) {
        vo2_2 = vo2_2 + 0.2;
    }else if(vo2_2d == false) {
        vo2_2 = vo2_2 - 0.2;
    }
    line(vo2_2, 0, vo2_2, ho1);
    
//h3
    strokeWeight(15);
    if(ho3 <= 80) {
        ho3d = true;
    }
    if (ho3 > ho1-50) {
        ho3d = false;
    }
    if(ho3d == true) {
        ho3 = ho3 + 0.3;
    }else if(ho3d == false) {
        ho3 = ho3 - 0.3;
    }
    line(vo2_1, ho3, vo1, ho3);
    
//v3_1
    strokeWeight(15);
    if(vo3_1 <= vo2_1+70) {
        vo3_1d = true;
    }
    if (vo3_1 > vo1-70) {
        vo3_1d = false;
    }
    if(vo3_1d == true) {
        vo3_1 = vo3_1 + 0.3;
    }else if(vo3_1d == false) {
        vo3_1 = vo3_1 - 0.3;
    }
    line(vo3_1, ho2_1, vo3_1, height);
    
//v3_2    
    strokeWeight(15);
    if(vo3_2 <= vo2_2+70) {
        vo3_2d = true;
    }
    if (vo3_2 > width-50 || vo3_2 > vo3_3-50 ) {
        vo3_2d = false;
    }
    if(vo3_2d == true) {
        vo3_2 = vo3_2 + 0.3;
    }else if(vo3_2d == false) {
        vo3_2 = vo3_2 - 0.3;
    }
    line(vo3_2, ho1, vo3_2, ho2_2);
    
//v3_3    
    strokeWeight(15);
    if(vo3_3 <= vo3_2+70) {
        vo3_3d = true;
    }
    if (vo3_3 > width-70) {
        vo3_3d = false;
    }
    if(vo3_3d == true) {
        vo3_3 = vo3_3 + 0.4;
    }else if(vo3_3d == false) {
        vo3_3 = vo3_3 - 0.4;
    }
    line(vo3_3, ho2_2, vo3_3, height);
    
//h4_1
    strokeWeight(13);
    if(ho4_1 <= ho2_1+50) {
        ho4_1d = true;
    }
    if (ho4_1 > height-90) {
        ho4_1d = false;
    }
    if(ho4_1d == true) {
        ho4_1 = ho4_1 + 0.4;
    }else if(ho4_1d == false) {
        ho4_1 = ho4_1 - 0.4;
    }
    line(0, ho4_1, vo3_1, ho4_1);
    
//h4_2    
    strokeWeight(13);
    if(ho4_2 <= ho6+70) {
        ho4_2d = true;
    }
    if (ho4_2 > ho2_2-70) {
        ho4_2d = false;
    }
    if(ho4_2d == true) {
        ho4_2 = ho4_2 + 0.5;
    }else if(ho4_2d == false) {
        ho4_2 = ho4_2 - 0.5;
    }
    line(vo1, ho4_2, vo3_2, ho4_2);
    
//v4
    strokeWeight(13);
    if(vo4 <= vo2_1+50) {
        vo4d = true;
    }
    if (vo4 > vo1-50) {
        vo4d = false;
    }
    if(vo4d == true) {
        vo4 = vo4 + 0.3;
    }
    if(vo4d == false) {
        vo4 = vo4 - 0.3;
    }
    line(vo4, ho3, vo4, ho1);
    
//v5_1
    strokeWeight(10);
    if(vo5_1 <= 100) {
        vo5_1d = true;
    }
    if (vo5_1 > vo3_1-50) {
        vo5_1d = false;
    }
    if(vo5_1d == true) {
        vo5_1 = vo5_1 + 0.6;
    }else if(vo5_1d == false) {
        vo5_1 = vo5_1 - 0.6;
    }
    line(vo5_1, ho2_1, vo5_1, ho4_1);
    
//v5_2    
    strokeWeight(10);
    if(vo5_2 <= vo1+90) {
        vo5_2d = true;
    }
    if (vo5_2 > vo3_2-100) {
        vo5_2d = false;
    }
    if(vo5_2 <= vo1+90) {
        vo5_2d = true;
    }
    if(vo5_2d == true) {
        vo5_2 = vo5_2 + 0.7;
    }else if(vo5_2d == false) {
        vo5_2 = vo5_2 - 0.7;
    }
    line(vo5_2, ho1, vo5_2, ho4_2);
    
//h6    
    strokeWeight(10);
    if(ho6 <= ho1+50) {
        ho6d = true;
    }
    if (ho6 > ho4_2-50) {
        ho6d = false;
    }
    if(ho6 <= ho1+50) {
        ho6d = true;
    }
    if(ho6d == true) {
        ho6 = ho6 + 0.2;
    }
    if(ho6d == false) {
        ho6 = ho6 - 0.2;
    }
    line(vo1, ho6, vo5_2, ho6);
    
}
