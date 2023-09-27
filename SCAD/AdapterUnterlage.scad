//OpenSCAD-Skript

//Moduldefinition mit Parametern
module support (
//Parameter
hght=3,distxi=37.5,distx=14.5,dia1=3.7,dia2=8,disty=28)
//Beginn Modul
{
difference(){   //difference 1
union(){        //union 1
difference(){   //difference 2
union(){        //union 2
    //alles, was vor der nächsten geschweiften Klammer steht, wird zusammengefügt (union 2)
//Blöcke
translate([-distxi/2, 0, 0])
cylinder(d=dia2, h=hght, $fn=16);
translate([distxi/2, 0, 0])
cylinder(d=dia2, h=hght, $fn=16);
translate([-distxi/2-distx, 0, 0])
cylinder(d=dia2, h=hght, $fn=16);
translate([distxi/2+distx, 0, 0])
cylinder(d=dia2, h=hght, $fn=16);
translate([-distxi/2-distx, disty, 0])
cylinder(d=dia2, h=hght, $fn=16);
translate([distxi/2+distx, disty, 0])
cylinder(d=dia2, h=hght, $fn=16);   
//Verbinder
translate([-distxi/2-distx, -dia2/2, 0])
cube([distxi+2*distx,dia2,hght]);
translate([-distxi/2-distx-dia2/2, 0, 0])
cube([dia2,disty,hght]);
translate([distxi/2+distx-dia2/2, 0, 0])
cube([dia2,disty,hght]);
}               //union 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon abgezogen (difference 2)
//Ausschnitt
translate([-distxi/2, 0, -0.1])
cylinder(d=dia1, h=2*hght, $fn=16);
translate([distxi/2, 0, -0.1])
cylinder(d=dia1, h=2*hght, $fn=16);
translate([-distxi/2-distx, 0, -0.1])
cylinder(d=dia1, h=2*hght, $fn=16);
translate([distxi/2+distx, 0, -0.1])
cylinder(d=dia1, h=2*hght, $fn=16);
translate([-distxi/2-distx, disty, -0.1])
cylinder(d=dia1, h=2*hght, $fn=16);
translate([distxi/2+distx, disty, -0.1])
cylinder(d=dia1, h=2*hght, $fn=16); 
}  //difference 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird dazu hinzugefügt (union 1)
//Text


}               //union 1 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon wieder abgezogen (difference 1)

}               //difference 1 end

}  //module end


//Hier werden Instanzen des Moduls aufgerufen
translate([0,0,0]) support();
