//OpenSCAD-Skript

//Moduldefinition mit Parametern
module halter (
//Parameter
dia1=2,dia2=8,dia3=1.6, dia4=1.8, dia5=2.1,
lngth=56, free=44, innerw=37, innerh=28, 
thck=2.5, height=12,
wdth=28, brdth=20,inset=16, dist=13, bolts=20, fixdist=54
)
//Beginn Modul
{
difference(){   //difference 1
union(){        //union 1
difference(){   //difference 2
union(){        //union 2
    //alles, was vor der nächsten geschweiften Klammer steht, wird zusammengefügt (union 2)
//Block
translate([-lngth/2,0,0])
    cube([lngth,innerh+brdth-2,thck]);
//Wand
translate([-lngth/2,-2,0])
    cube([lngth,2,height]);
/*
//Blockverlängerung
translate([-lngth/2+10,-10,0])
    cube([lngth-20,10,thck]);
translate([-lngth/2+10,0,0])
    cylinder(d=20, h=thck, $fn=32);
translate([lngth/2-10,0,0])
    cylinder(d=20, h=thck, $fn=32);
*/
//Schraubenzylinder
translate([-fixdist/2,2,0])
    cylinder(d=dia2, h=height, $fn=32);
translate([fixdist/2,2,0])
    cylinder(d=dia2, h=height, $fn=32);
translate([-fixdist/2,brdth+innerh-2.8,0])
    cylinder(d=dia2, h=height, $fn=32);
translate([fixdist/2,brdth+innerh-2.8,0])
    cylinder(d=dia2, h=height, $fn=32);
   
}               //union 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon abgezogen (difference 2)
//Ausschnitt
translate([-innerw/2,brdth,-0.1])
    cube([innerw,innerh+1,2*thck]);
//Ausschnitte schmal
translate([-innerw/2,4,-0.1])
    cube([3.5,20,2*thck]);
translate([innerw/2-3.5,4,-0.1])
    cube([3.5,20,2*thck]);
//Anschnitt innen
translate([0,24,-0.1])
rotate([0,0,45])
    cube([innerw,innerw,2*thck]);
//Anschnitte innen
translate([-innerw/2-4.5,innerh+12,thck])
rotate([-20,0,0])
    cube([10,10,10]);
translate([innerw/2+4.5-10,innerh+12,thck])
rotate([-20,0,0])
    cube([10,10,10]);
//Anschnitt unten
translate([-innerw/2,brdth-1,-2])
rotate([45,0,0])
    cube([innerw,10,thck]);
//Bohrungen Schrauben
translate([-fixdist/2,2,1])
    cylinder(d=dia1, h=height, $fn=32);
translate([fixdist/2,2,1])
    cylinder(d=dia1, h=height, $fn=32);
translate([-fixdist/2,brdth+innerh-2.8,1])
    cylinder(d=dia1, h=height, $fn=32);
translate([fixdist/2,brdth+innerh-2.8,1])
    cylinder(d=dia1, h=height, $fn=32);
   
//Bohrungen Schrauben Schiene
translate([-fixdist/2+1,9,-0.1])
    cylinder(d=dia5, h=height, $fn=32);
translate([fixdist/2-1,9,-0.1])
    cylinder(d=dia5, h=height, $fn=32);
translate([-fixdist/2+1,brdth+innerh-10,-0.1])
    cylinder(d=dia5, h=height, $fn=32);
translate([fixdist/2-1,brdth+innerh-10,-0.1])
    cylinder(d=dia5, h=height, $fn=32);
    
//Bohrungen Klemmplatte
translate([-bolts/2,brdth/2,-0.1])
    cylinder(d=dia4, h=height, $fn=32);
translate([bolts/2,brdth/2,-0.1])
    cylinder(d=dia4, h=height, $fn=32);

}  //difference 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird dazu hinzugefügt (union 1)
//Platte
translate([-wdth/2,innerh,0])
    cube([wdth,brdth,2.5]);
}               //union 1 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon wieder abgezogen (difference 1)
//Bohrungen Klemmplatte
translate([-bolts/2,innerh+brdth/2,-0.1])
    cylinder(d=dia5, h=height, $fn=32);
translate([bolts/2,innerh+brdth/2,-0.1])
    cylinder(d=dia5, h=height, $fn=32);
//Insets für Pins
translate([-dist/2,innerh+brdth-inset,2])
rotate([-90,0,0])
    cylinder(d=dia3, h=2*inset, $fn=32);
translate([dist/2,innerh+brdth-inset,2])
rotate([-90,0,0])
    cylinder(d=dia3, h=2*inset, $fn=32);
//Anschlusslöcher für Pins
translate([-dist/2,innerh+brdth-inset+12,-0.1])
    cylinder(d=3*dia3, h=2*inset, $fn=32);
translate([dist/2,innerh+brdth-inset+12,-0.1])
    cylinder(d=3*dia3, h=2*inset, $fn=32);
}               //difference 1 end

}  //module end

module schienen (
//Parameter
dia1=2,dia2=8,dia3=1.6, dia4=1.8, dia5=2.2,
lngth=56, free=44, innerw=37, innerh=28, 
thck=2.7, height=11,
wdth=28, brdth=20,inset=16, dist=13, bolts=20, fixdist=54
)
//Beginn Modul
{
difference(){   //difference 1
union(){        //union 1
difference(){   //difference 2
union(){        //union 2
    //alles, was vor der nächsten geschweiften Klammer steht, wird zusammengefügt (union 2)
//Block
translate([-lngth/2,0,0])
    cube([lngth,innerh+brdth,thck]);
   
}               //union 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon abgezogen (difference 2)
//Ausschnitt
translate([-innerw/2,-1,-0.1])
    cube([innerw,3*innerh,2*thck]);
//Ausschnitte schmal
translate([-innerw/2,4,-0.1])
    cube([3.5,20,2*thck]);
translate([innerw/2-3.5,4,-0.1])
    cube([3.5,20,2*thck]);
//Anschnitt
translate([0,24,-0.1])
rotate([0,0,45])
    cube([innerw,innerw,2*thck]);
//Bohrungen Schrauben
translate([-fixdist/2+1,9,-0.1])
    cylinder(d=dia4, h=height, $fn=32);
translate([fixdist/2-1,9,-0.1])
    cylinder(d=dia4, h=height, $fn=32);
translate([-fixdist/2+1,brdth+innerh-10,-0.1])
    cylinder(d=dia4, h=height, $fn=32);
translate([fixdist/2-1,brdth+innerh-10,-0.1])
    cylinder(d=dia4, h=height, $fn=32);

}  //difference 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird dazu hinzugefügt (union 1)

}               //union 1 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon wieder abgezogen (difference 1)

}               //difference 1 end

}  //module end
//Hier werden Instanzen des Moduls aufgerufen
translate([0,0,0]) halter();
translate([0,50,0]) schienen();