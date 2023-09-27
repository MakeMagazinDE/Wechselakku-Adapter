//OpenSCAD-Skript

//Moduldefinition mit Parametern
module Adapt (
//Parameter
hght1=5,hght2=4.2,
lngth=61,wdth=45,
slot1=1.4,slot2=1.6,
cut1=18,cut2=30,
dist1=20,dist2=10,
nutb=5,nuth=2.5)
//Beginn Modul
{
difference(){   //difference 1
union(){        //union 1
difference(){   //difference 2
union(){        //union 2
    //alles, was vor der nächsten geschweiften Klammer steht, wird zusammengefügt (union 2)
//Block
translate([-wdth/2, 0, 0])
cube([wdth, lngth-2, hght1]);
translate([-wdth/2+2, lngth-2, 0])
cube([wdth-4, 2, hght1]);
translate([-wdth/2+2, lngth-2, 0])
cylinder(d=4, h=hght1, $fn=64);
translate([wdth/2-2, lngth-2, 0])
cylinder(d=4, h=hght1, $fn=64);
}               //union 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon abgezogen (difference 2)
//Anschnitte
translate([-wdth/2-3.5, -5, -0.01])
rotate([0,0,7])
cube([5, 25, 2*hght1]);
translate([wdth/2-1.5, -5, -0.01])
rotate([0,0,-7])
cube([5, 25, 2*hght1]);
translate([-wdth/2-1.5, -5, hght1-1])
rotate([5,0,0])
cube([50, 25, 2*hght1]);
//Ausschnitt
translate([-cut2/2, -0.01, -0.01])
cube([cut2, cut1, 2*hght1]);
//Schlitz für Mittenkontakt
translate([-slot1/2, -0.01, -0.01])
cube([slot1, cut1+dist2, 2*hght1]);
translate([-slot1/2-slot2+0.01, cut1+dist2-9.5, 1])
cube([slot2, dist1, 2*hght1]);
translate([-slot1/2-slot2/2, cut1+dist1-1, -0.01])
cylinder(d=3.2, h=2*hght1, $fn=16);
//Schlitz für linken Kontakt
translate([-5-slot1-slot1/2, -0.01, -0.01])
cube([slot1, cut1+dist1, 2*hght1]);
translate([-5-slot1-slot1/2-slot2+0.01, cut1+dist1-10, 1])
cube([slot2, dist1, 2*hght1]);
translate([-5-slot1-slot2, cut1+dist1+dist2-1, -0.01])
cylinder(d=3.2, h=2*hght1, $fn=16);
translate([-5-slot1-2, cut1-0.02, hght1-2+0.01])
cube([4, dist1+3, 2]);
//Schlitz für rechten Kontakt
translate([5+slot1/2, -0.01, -0.01])
cube([slot1, cut1+dist1, 2*hght1]);
translate([5+slot1/2+slot1-0.01, cut1+dist1-10, 1])
cube([slot2, dist1, 2*hght1]);
translate([5+slot1+slot2, cut1+dist1+dist2-1, -0.01])
cylinder(d=3.2, h=2*hght1, $fn=16);
translate([5+slot1-2, cut1-0.02, hght1-2+0.01])
cube([4, dist1+3, 2]);
//Bohrung
translate([0, lngth-5, -0.01])
cylinder(d=3.2, h=2*hght1, $fn=16);

//Schienennut
translate([-cut2/2, cut1-0.02, hght1-nuth+0.01])
cube([nutb, dist1+7, nuth]);
}  //difference 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird dazu hinzugefügt (union 1)
//Text


}               //union 1 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon wieder abgezogen (difference 1)

}               //difference 1 end

}  //module end

//Hier werden Instanzen des Moduls aufgerufen
translate([0,0,0]) Adapt();