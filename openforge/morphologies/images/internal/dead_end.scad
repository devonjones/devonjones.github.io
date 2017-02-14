_basis = 25;

module dead_end(x=2, y=2, h=2, wall=10.2, base=false, external=false) {
    base_buffer = base ? 6 : 0;
    translate([0,0,base_buffer]) color("LightGray") {
        for (i = [0:x-1]) {
            for (j = [0:y-1]) {
                translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
            }
        }
    }

    color("Grey") {
        sub = external ? 0 : wall;
        ext = external ? wall : 0;
        cube([_basis*x,_basis*y,1+base_buffer]);
        translate([0,_basis*y-sub,0]) cube([_basis*x+ext,wall,_basis*h-6+base_buffer]);
        translate([-ext,0,0]) cube([wall,_basis*y+ext,_basis*h-6+base_buffer]);
        translate([_basis*x-sub,0,0]) cube([wall,_basis*y,_basis*h-6+base_buffer]);
    }
}

//dead_end(x=2, y=2, h=1, wall=10.2, base=false, external=false);
