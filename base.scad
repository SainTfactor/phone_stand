module base(radius=60, height=4) {
    rotate_extrude()
        polygon([[0,0], for (t=[0:1:90]) [radius + height*cos(t), height*sin(t)], [0,height]]);
}

base(radius=50);