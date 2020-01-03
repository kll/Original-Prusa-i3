// PRUSA MMU2
// selector-front-plate
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

// requires threadlib and it's prerequisites
// https://github.com/adrianschlatter/threadlib

use <threadlib/threadlib.scad>

module front_plate()
{
    difference()
    {
        translate([50,-65.5,-13.5]) cube([15,4.5,34.5]);
        
        // screws
        translate([59,-48,-8]) rotate([90,0,0]) cylinder(r=1.65, h=30, $fn=50);
        translate([59,-48,15]) rotate([90,0,0]) cylinder(r=1.65, h=30, $fn=50);
        
        translate([59,-60,-8]) rotate([90,0,0]) cylinder(r2=1.65,r1=2.5, h=1.5, $fn=50);
        translate([59,-60,15]) rotate([90,0,0]) cylinder(r2=1.65,r1=2.5, h=1.5, $fn=50);
        
        translate([59,-65,-8]) rotate([90,0,0]) cylinder(r=3.2, h=5, $fn=50);
        translate([59,-65,15]) rotate([90,0,0]) cylinder(r=3.2, h=5, $fn=50);

        // M10 threads for PC4-M10 straight through PTFE connector
        translate([59, -61.1, 4]) rotate([90, 0, 0]) bolt("M10x1", turns=4.5, higbee_arc=30);

        // edges
        translate([45,-64,-15]) rotate([0,0,-45]) cube([15,4,40]);
        translate([45,-64,-18.5]) rotate([45,0,0]) cube([25,4,42]);
        translate([45,-71,19]) rotate([-45,0,0]) cube([25,4,40]);
        
    }
}

rotate([-90,0,0]) 
front_plate();