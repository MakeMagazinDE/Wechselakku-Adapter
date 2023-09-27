//OpenSCAD-Skript

//Moduldefinition mit Parametern
module Frame (
//Parameter
hght1=3,hght2=2.5,lngth=55,wdth=57,innerl=45,innerw=37.1,dia1=3,dia2=6, dist=3.5)
//Beginn Modul
{
difference(){   //difference 1
union(){        //union 1
difference(){   //difference 2
union(){        //union 2
    //alles, was vor der nächsten geschweiften Klammer steht, wird zusammengefügt (union 2)
//Block
translate([-wdth/2, 0, 0])
cube([wdth, lngth, hght1]);
translate([-wdth/2+7, 0, hght1])
cube([wdth-14, lngth-7, hght2]);
}               //union 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon abgezogen (difference 2)
//Ausschnitt
translate([-innerw/2, -0.1, -0.1])
cube([innerw, innerl, 5*hght1]);
//Anschnitte innen
translate([-innerw/2-1.5, -5, -0.01])
rotate([0,0,-7])
cube([5, 25, 5*hght1]);
translate([innerw/2+1.5-5, -5, -0.01])
rotate([0,0,7])
cube([5, 25, 5*hght1]);
//Anschnitte oben
translate([-wdth/2, -1, hght1+hght2-1.5])
rotate([7,0,0])
cube([wdth, 25, 5*hght1]);
//Anschnitte oben
translate([-innerw/2, innerl-0.1, hght1-1])
rotate([7,0,0])
cube([innerw, 25, 5*hght1]);
//Bohrung Mitte
translate([0, lngth-dist, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([0, lngth-dist, hght1-(1.2*dia2-dia1)/2-0.5])
cylinder(d1=dia1, d2=1.2*dia2, h=(1.3*dia2-dia1)/2+0.25, $fn=48);
//Bohrungen links
translate([-wdth/2+dist, lngth-dist, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([-wdth/2+dist, lngth-dist, hght1-(1.2*dia2-dia1)/2])
cylinder(d1=dia1, d2=1.2*dia2, h=(1.2*dia2-dia1)/2+0.1, $fn=48);
translate([-wdth/2+dist, lngth/2, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([-wdth/2+dist, lngth/2, hght1-(1.2*dia2-dia1)/2])
cylinder(d1=dia1, d2=1.2*dia2, h=(1.2*dia2-dia1)/2+0.1, $fn=48);
translate([-wdth/2+dist, 7, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([-wdth/2+dist, 7, hght1-(1.2*dia2-dia1)/2])
cylinder(d1=dia1, d2=1.2*dia2, h=(1.2*dia2-dia1)/2+0.1, $fn=48);
//Bohrungen rechts
translate([wdth/2-dist, lngth-dist, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([wdth/2-dist, lngth-dist, hght1-(1.2*dia2-dia1)/2])
cylinder(d1=dia1, d2=1.2*dia2, h=(1.2*dia2-dia1)/2+0.1, $fn=48);
translate([wdth/2-dist, lngth/2, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([wdth/2-dist, lngth/2, hght1-(1.2*dia2-dia1)/2])
cylinder(d1=dia1, d2=1.2*dia2, h=(1.2*dia2-dia1)/2+0.1, $fn=48);
translate([wdth/2-dist, 7, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([wdth/2-dist, 7, hght1-(1.2*dia2-dia1)/2])
cylinder(d1=dia1, d2=1.2*dia2, h=(1.2*dia2-dia1)/2+0.1, $fn=48);
//Materialsparen
//Einbuchtungen außen
translate([-12.5, lngth+6.3, -0.01])
cylinder(d=24, h=4*hght1, $fn=64);
translate([12.5, lngth+6.3, -0.01])
cylinder(d=24, h=4*hght1, $fn=64);
translate([-wdth/2-7, lngth-15.5, -0.01])
cylinder(d=24, h=4*hght1, $fn=64);
translate([wdth/2+7, lngth-15.5, -0.01])
cylinder(d=24, h=4*hght1, $fn=64);
translate([-wdth/2-7, 17, -0.01])
cylinder(d=22, h=4*hght1, $fn=64);
translate([wdth/2+7, 17, -0.01])
cylinder(d=22, h=4*hght1, $fn=64);
//Ecken anschrägen
translate([-wdth/2, -4, -0.01])
rotate([0,0,45])
cube([5, 5, 5*hght1]);
translate([wdth/2, -4, -0.01])
rotate([0,0,45])
cube([5, 5, 5*hght1]);
translate([-wdth/2, lngth-2, -0.01])
rotate([0,0,45])
cube([5, 5, 5*hght1]);
translate([wdth/2, lngth-2, -0.01])
rotate([0,0,45])
cube([5, 5, 5*hght1]);
}  //difference 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird dazu hinzugefügt (union 1)
//Text


}               //union 1 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon wieder abgezogen (difference 1)

}               //difference 1 end

}  //module end

module Base (
//Parameter
hght1=4,hght2=5.5,lngth=55,wdth=57,innerl=45,innerw=44.5,dia1=2.7,dia2=8, dia3=12, dist=3.5, contw=12.5,contth=1, holedist=12)
//Beginn Modul
{
difference(){   //difference 1
union(){        //union 1
difference(){   //difference 2
union(){        //union 2
    //alles, was vor der nächsten geschweiften Klammer steht, wird zusammengefügt (union 2)
//Block
translate([-wdth/2, 0, 0])
cube([wdth, lngth, hght1+hght2]);

}               //union 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon abgezogen (difference 2)
//Ausschnitt
translate([-innerw/2, -0.1, hght1])
cube([innerw, innerl, 5*hght1]);
//Anschnitte innen
translate([-innerw/2-1.5, -0.1, hght1-1])
rotate([7,0,-7])
cube([5, 25, 5*hght1]);
translate([innerw/2+1.5-5, -0.1, hght1-0.9])
rotate([7,0,7])
cube([5, 25, 5*hght1]);
//Anschnitte oben
translate([-innerw/2, -1, hght1-1.05])
rotate([7,0,0])
cube([innerw, 20, 5*hght1]);
//Kontaktausschnitte
translate([0,1,0]) {
translate([-contw/2-contth/2, 15, hght1-0.6-3])
cube([contth, 7, 5*hght1]);
translate([contw/2-contth/2, 15, hght1-0.6-3])
cube([contth, 7, 5*hght1]);
translate([-contw/2-contth/2, 5, hght1-0.6])
cube([contth, 16, 5*hght1]);
translate([contw/2-contth/2, 5, hght1-0.6])
cube([contth, 16, 5*hght1]);
translate([-contw/2, 16, -0.1])
cylinder(d1=3, d2=1, h=1.5, $fn=48);
translate([contw/2, 16, -0.1])
cylinder(d1=3, d2=1, h=1.5, $fn=48);
translate([-contw/2, 16+5.08, -0.1])
cylinder(d1=3, d2=1, h=1.5, $fn=48);
translate([contw/2, 16+5.08, -0.1])
cylinder(d1=3, d2=1, h=1.5, $fn=48);}
//Befestigungsbohrungen
//Bohrung hinten
translate([0, lngth-15, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([0, lngth-15, hght1-(dia2-dia1)/2])
cylinder(d1=dia1, d2=dia2, h=(dia2-dia1)/2+0.1, $fn=48);
translate([-wdth/4, lngth-15, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([-wdth/4, lngth-15, hght1-(dia2-dia1)/2])
cylinder(d1=dia1, d2=dia2, h=(dia2-dia1)/2+0.1, $fn=48);
translate([wdth/4, lngth-15, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([wdth/4, lngth-15, hght1-(dia2-dia1)/2])
cylinder(d1=dia1, d2=dia2, h=(dia2-dia1)/2+0.1, $fn=48);
//Bohrung vorn
translate([0, holedist, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([0, holedist, hght1-(dia2-dia1)/2])
cylinder(d1=dia1, d2=dia2, h=(dia2-dia1)/2+0.1, $fn=48);
translate([-wdth/4, holedist, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([-wdth/4, holedist, hght1-(dia2-dia1)/2])
cylinder(d1=dia1, d2=dia2, h=(dia2-dia1)/2+0.1, $fn=48);
translate([wdth/4, holedist, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([wdth/4, holedist, hght1-(dia2-dia1)/2])
cylinder(d1=dia1, d2=dia2, h=(dia2-dia1)/2+0.1, $fn=48);
//Rahmenbefestigung
//Bohrung Mitte
translate([0, lngth-dist, -0.01])
cylinder(d=dia1, h=4*hght1, $fn=48);
//Bohrungen links
translate([-wdth/2+dist, lngth-dist, -0.01])
cylinder(d=dia1, h=4*hght1, $fn=48);
translate([-wdth/2+dist, lngth/2, -0.01])
cylinder(d=dia1, h=4*hght1, $fn=48);
translate([-wdth/2+dist, 7, -0.01])
cylinder(d=dia1, h=4*hght1, $fn=48);
//Bohrungen rechts
translate([wdth/2-dist, lngth-dist, -0.01])
cylinder(d=dia1, h=4*hght1, $fn=48);
translate([wdth/2-dist, lngth/2, -0.01])
cylinder(d=dia1, h=4*hght1, $fn=48);
translate([wdth/2-dist, 7, -0.01])
cylinder(d=dia1, h=4*hght1, $fn=48);
//Materialsparen
//Einbuchtungen außen
translate([-12.5, lngth+6.3, -0.01])
cylinder(d=24, h=4*hght1, $fn=64);
translate([12.5, lngth+6.3, -0.01])
cylinder(d=24, h=4*hght1, $fn=64);
translate([-wdth/2-7, lngth-15.5, -0.01])
cylinder(d=24, h=4*hght1, $fn=64);
translate([wdth/2+7, lngth-15.5, -0.01])
cylinder(d=24, h=4*hght1, $fn=64);
translate([-wdth/2-7, 17, -0.01])
cylinder(d=22, h=4*hght1, $fn=64);
translate([wdth/2+7, 17, -0.01])
cylinder(d=22, h=4*hght1, $fn=64);
//Ecken anschrägen
translate([-wdth/2, -4, -0.01])
rotate([0,0,45])
cube([5, 5, 5*hght1]);
translate([wdth/2, -4, -0.01])
rotate([0,0,45])
cube([5, 5, 5*hght1]);
translate([-wdth/2, lngth-2, -0.01])
rotate([0,0,45])
cube([5, 5, 5*hght1]);
translate([wdth/2, lngth-2, -0.01])
rotate([0,0,45])
cube([5, 5, 5*hght1]);
//Bohrungen Mitte
translate([0, lngth/2-2, -0.01])
cylinder(d=dia3-3, h=2*hght1, $fn=48);
translate([-wdth/4, lngth/2-2, -0.01])
cylinder(d=dia3, h=2*hght1, $fn=48);
translate([wdth/4, lngth/2-2, -0.01])
cylinder(d=dia3, h=2*hght1, $fn=48);

}  //difference 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird dazu hinzugefügt (union 1)
//Haken
translate([-18, -15, 0])
cube([36, 15, hght1-0.9]);
translate([-20, -13, 0])
cube([40, 15, hght1-0.9]);
translate([-18, -13, 0])
cylinder(d=4,h=hght1-0.9,$fn=16);
translate([-18+36, -13, 0])
cylinder(d=4,h=hght1-0.9,$fn=16);
}               //union 1 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon wieder abgezogen (difference 1)
//Haken
translate([-13, -10.6, -0.1])
cube([26, 11, 2*hght1]);
}               //difference 1 end

}  //module end

/*module Support (
//Parameter
hght1=2.5,lngth=55,wdth=57,dia1=3, dist=3.5, holedist=12, dist=12.5)
//Beginn Modul
{
difference(){   //difference 1
union(){        //union 1
difference(){   //difference 2
union(){        //union 2
    //alles, was vor der nächsten geschweiften Klammer steht, wird zusammengefügt (union 2)
//Block
translate([-wdth/4, holedist, 0])
cylinder(d=15, h=hght1, $fn=48);
translate([wdth/4, holedist, 0])
cylinder(d=15, h=hght1, $fn=48);
translate([-wdth/4, holedist-15/2, 0])
cube([wdth/2, 15, hght1]);

}               //union 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon abgezogen (difference 2)


//Befestigungsbohrungen
//Bohrungen
translate([0, holedist, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([-wdth/4, holedist, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
translate([wdth/4, holedist, -0.01])
cylinder(d=dia1, h=2*hght1, $fn=48);
//Ausschnitte Kabel
translate([-dist/2-1.5,-0.1,-0.1])
cube([3,16,2*hght1]);
translate([dist/2-1.5,-0.1,-0.1])
cube([3,16,2*hght1]);
}  //difference 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird dazu hinzugefügt (union 1)
//Text


}               //union 1 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon wieder abgezogen (difference 1)

}               //difference 1 end

}  //module end
*/
//Hier werden Instanzen des Moduls aufgerufen
translate([0,0,0]) Frame();
translate([60,0,0]) Base();
//rotate([0,0,90]) translate([22,-3,0]) Support();
//rotate([0,0,90]) translate([22,-20,0]) Support();