//OpenSCAD-Skript

//Moduldefinition mit Parametern
module Adapt (
//Parameter
lngth1=46,lngth2=36,hght=46,br=15,d1=3,d2=8, gap=15.5,dpth=1,dia1=3.0,cutl=30.5,cutw=10.7)
//Beginn Modul
{
difference(){   //difference 1
union(){        //union 1
difference(){   //difference 2
union(){        //union 2
    //alles, was vor der nächsten geschweiften Klammer steht, wird zusammengefügt (union 2)
//Block
translate([-lngth1/2, -lngth2/2, 0])
cube([lngth1, lngth2, hght-6]);

}               //union 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon abgezogen (difference 2)
//Cutout Block
translate([-lngth1/2+12.5, -lngth2/2+5, d1]) cube([lngth1-25, lngth2, hght]);
translate([-lngth1/2+4, -lngth2/2+5, d1]) cube([lngth1-8, lngth2-12, hght]);
translate([-lngth1/2+4, -lngth2/2-5, 16]) cube([lngth1-8, lngth2-12, 16]);
//Anschnitt
translate([-lngth1/2-2, -lngth2/2, 16]) rotate([45,0,0]) cube([lngth1+10, lngth2+40, hght]);
//Schalter
translate([-cutl/2, lngth2/2-12-cutw, -0.1]) cube([cutl, cutw, 25]);
//Schraubenlöcher
translate([-14,12,8]) rotate([-90,0,0]) cylinder(d=dia1,h=50,$fn=32);
translate([-14,12,8+28]) rotate([-90,0,0]) cylinder(d=dia1,h=50,$fn=32);
translate([14,12,8]) rotate([-90,0,0]) cylinder(d=dia1,h=50,$fn=32);
translate([14,12,8+28]) rotate([-90,0,0]) cylinder(d=dia1,h=50,$fn=32);
//Schienennut
translate([-gap/2, -lngth2/2-0.1, -0.1])
cube([gap, dpth, 24]);
//LED
translate([0,-10,-0.1]) cylinder(d=5,h=10,$fn=32);
//Materialsparen
translate([-50,0,15]) rotate([0,90,0]) cylinder(d=19,h=200,$fn=32);
translate([-50,6,30]) rotate([0,90,0]) cylinder(d=8,h=200,$fn=32);
translate([0,0,hght/2-1]) rotate([-90,0,0]) cylinder(d=32,h=200,$fn=32);
translate([-lngth1/2+4,2,hght/2-1]) rotate([0,90,0]) cylinder(d=28,h=lngth1-8,$fn=32);
}  //difference 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird dazu hinzugefügt (union 1)
//Klötzchen
translate([-gap/2-5, -lngth2/2+3, 3])
cube([6, 8, 8]);
translate([gap/2-1, -lngth2/2+3, 3])
cube([6, 8, 8]);

}               //union 1 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon wieder abgezogen (difference 1)
//Schraubenlöcher
translate([-gap/2-2,0,8]) rotate([90,0,0]) cylinder(d=dia1,h=50,$fn=32);
translate([gap/2+2,0,8]) rotate([90,0,0]) cylinder(d=dia1,h=50,$fn=32);
}               //difference 1 end

}  //module end

//Hier werden Instanzen des Moduls aufgerufen
translate([0,0,0]) Adapt();