use <cradle.scad>
use <base.scad>
use <column.scad>

$fa = 1;
$fs = 0.4;

base();

translate([-15.5/2,-15,2])
rotate([-25,0,0])
    cradle();
    
translate([0,-35,0])
    column(angle=65, height=14, radius=3);
translate([0,-45,0])
    column(angle=65, height=19, radius=3);
translate([0,-55,0])
    column(angle=65, height=24, radius=3);
    
translate([0,0,0])
rotate([0,0,180])
    column(angle=25, height=33, radius=3);
translate([0,10,0])
rotate([0,0,180])
    column(angle=25, height=54, radius=3);
translate([0,20,0])
rotate([0,0,180])
    column(angle=25, height=76, radius=3);