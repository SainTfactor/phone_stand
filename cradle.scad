

module cradle_leg(length=50) {
    linear_extrude(length)
        polygon([[0,0],[0,5],[15.5,5],[15.5,0],[13.5,0],[13.5,3],[2,3],[2,0]]);
}

module edge_curve(){
    difference() {
        cube([2,5,5]);
        translate([-0.5,0,5])
        rotate([0,90,0])
        cylinder(h=3,r=5);
    }
}

module cradle(base_length=105, overhang=17, phone_width=81.5){
    // long leg, bottom
    cradle_leg(base_length);

    // crossbeam, head
    translate([0,-phone_width,5])
    rotate([-90,0,0])
    cradle_leg(phone_width+4);

    // short leg, top
    translate([0,-phone_width+5,overhang])
    rotate([180,0,0])
    cradle_leg(overhang);
    
    // curve the inside corners
    translate([0,-4.999,5-0.001])
    edge_curve();
    translate([13.5,-4.999,5-0.001])
    edge_curve();
    translate([2,-phone_width+5+4.999,5-0.001])
    rotate([0,0,180])
    edge_curve();
    translate([15.5,-phone_width+5+4.999,5-0.001])
    rotate([0,0,180])
    edge_curve();
}

cradle();