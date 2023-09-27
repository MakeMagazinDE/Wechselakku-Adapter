//OpenSCAD-Skript

//Moduldefinition mit Parametern
module support (
//Parameter
hghti=30,distxi=45,distyi=100,dia1=3.7,dia2=8,dia3=7.2,wall=1.5)
//Beginn Modul
{
difference(){   //difference 1
union(){        //union 1
difference(){   //difference 2
union(){        //union 2
    //alles, was vor der nächsten geschweiften Klammer steht, wird zusammengefügt (union 2)
//Blöcke
translate([-distxi/2-wall,0,0])
cube([distxi+2*wall,distyi+2*wall,hghti+wall]);
//Befestigungen
translate([-distxi/2-wall-dia2/2,dia2/2+3,0])
cylinder(d=dia2,h=hghti+wall,$fn=32);
translate([distxi/2+wall+dia2/2,dia2/2+3,0])
cylinder(d=dia2,h=hghti+wall,$fn=32);
translate([-distxi/2-wall-dia2/2,3,0])
cube([distxi+2*wall+dia2,dia2,hghti+wall]);
translate([0,distyi+2*wall+dia2/2,0])
cylinder(d=dia2,h=hghti+wall,$fn=32);
translate([-dia2/2,distyi+2*wall,0])
cube([dia2,dia2/2,hghti+wall]);

}               //union 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon abgezogen (difference 2)
//Hohlraum
translate([-distxi/2,wall,wall+0.1])
cube([distxi,distyi,hghti]);
//Bohrungen
translate([-distxi/2-wall-dia2/2,dia2/2+3,-0.1])
cylinder(d=dia1,h=2*hghti+wall,$fn=32);
translate([distxi/2+wall+dia2/2,dia2/2+3,-0.1])
cylinder(d=dia1,h=2*hghti+wall,$fn=32);
translate([0,distyi+2*wall+dia2/2,-0.1])
cylinder(d=dia1,h=2*hghti+wall,$fn=32);
//Kopfbohrungen
translate([-distxi/2-wall-dia2/2,dia2/2+3,-0.1])
cylinder(d=dia3,h=hghti+wall-4,$fn=32);
translate([distxi/2+wall+dia2/2,dia2/2+3,-0.1])
cylinder(d=dia3,h=hghti+wall-4,$fn=32);
translate([0,distyi+2*wall+dia2/2,-0.1])
cylinder(d=dia3,h=hghti+wall-4,$fn=32);
//Kopfsenkungen
translate([-distxi/2-wall-dia2/2,dia2/2+3,hghti+wall-4-0.2])
cylinder(d1=dia3,d2=dia1,h=2.5,$fn=32);
translate([distxi/2+wall+dia2/2,dia2/2+3,hghti+wall-4-0.2])
cylinder(d1=dia3,d2=dia1,h=2.5,$fn=32);
translate([0,distyi+2*wall+dia2/2,hghti+wall-4-0.2])
cylinder(d1=dia1,d2=dia3,h=2.5,$fn=32);
//Abschnitte
translate([distxi/2+wall,0,0])
rotate([0,15,0])
cube([50,20,50]);
translate([-distxi/2-wall-20+0.7,0,-5.2])
rotate([0,-15,0])
cube([20,20,50]);
translate([-distxi/2,distyi+2*wall,0])
rotate([-15,0,0])
cube([50,20,50]);
//Ausschnitt oben
translate([-distxi/3,-0.1,hghti+wall-4])
cube([2*distxi/3,5,5]);

//Gitterausschnitte Deckel
for (k = [0:15]) {
for (i = [-3:3]) { 
translate([i*6,7+k*6,-0.1])
cylinder(d=4,h=2*wall,$fn=16);
}}
//Gitterausschnitte Seitenwände
for (k = [0:3]) {
for (i = [0:14]) { 
translate([100,14+i*6,7+k*6])
rotate([0,-90,0])
cylinder(d=4,h=200,$fn=16);
}}
}  //difference 2 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird dazu hinzugefügt (union 1)
//Text


}               //union 1 end
    //alles, was vor der nächsten geschweiften Klammer steht, wird davon wieder abgezogen (difference 1)

}               //difference 1 end

}  //module end


//Hier werden Instanzen des Moduls aufgerufen
translate([0,0,0]) support();
