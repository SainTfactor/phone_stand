use <cradle.scad>
use <base.scad>
use <column.scad>

$fa = 1;
$fs = 0.4;

base();

translate([-15.5/2,-15,3.4])
rotate([-25,0,0])
    cradle();
    
translate([0,-35,0])
    column(angle=65, height=16, radius=3);
translate([0,-45,0])
    column(angle=65, height=20, radius=3);
translate([0,-55,0])
    column(angle=65, height=25, radius=3);
    
translate([0,0,0])
rotate([0,0,180])
    column(angle=25, height=34, radius=3);
translate([0,10,0])
rotate([0,0,180])
    column(angle=25, height=56, radius=3);
translate([0,20,0])
rotate([0,0,180])
    column(angle=25, height=77, radius=3);