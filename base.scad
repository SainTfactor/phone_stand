module letters(r=55, txt="Hello World") {
    for (i=[0:1:len(txt)]) {
        angle=i*10;
        dx = r*cos(angle);
        dy = r*sin(angle);
        translate([dx,dy,3.001])
        rotate([0,0,angle+90])
        linear_extrude(2)
        text(txt[i], halign="center");
}

}

module base(radius=60, height=4) {
    rotate_extrude()
        polygon([[0,0], for (t=[0:1:90]) [radius + height*cos(t), height*sin(t)], [0,height]]);
}

module lettered_base(r=60, h=4) {
    difference() {
        base(radius=r, height=h);
        letters(r=r-5, txt="SainTfactor");
        rotate([0,0,195])
        letters(r=r-5, txt="Studios");
    }
}

lettered_base();