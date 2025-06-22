module column(height=50, radius=10, angle=25) {
    difference(){
        cylinder(h=height, r=radius);
        translate([-radius-0.001,radius,height-(radius*2*tan(90-angle))])
        rotate([angle,0,0])
        cube(height*2);
    }
}

column();