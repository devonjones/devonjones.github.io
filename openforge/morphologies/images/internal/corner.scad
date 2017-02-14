_basis = 25;

module corner(x=2, h=2, wall=10.2, base=false, external=false) {
    base_buffer = base ? 6 : 0;
    translate([0,0,base_buffer]) color("LightGray") {
        for (i = [0:x-1]) {
            for (j = [0:x-1]) {
                translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
            }
        }
    }
    color("Grey") {
        sub = external ? 0 : wall;
        ext = external ? wall : 0;
        cube([_basis*x,_basis*x,1+base_buffer]);
        translate([0,_basis*x-sub,0]) cube([_basis*x+ext,wall,_basis*h-6+base_buffer]);
        translate([_basis*x-sub,0,0]) cube([wall,_basis*x,_basis*h-6+base_buffer]);
    }
}

module construction_kit_corner_corner_wall(x=2, h=2, base=false) {
    base_buffer = base ? 6 : 0;
    color("Grey") {
        translate([0,_basis*x-10.2,0]) cube([_basis*x,10.2,_basis*h-6+base_buffer]);
        translate([_basis*x-10.2,0,0]) cube([10.2,_basis*x,_basis*h-6+base_buffer]);
    }
}

//corner(x=2, h=2, wall=10.2, base=false, external=false);
//construction_kit_corner_corner_wall(x=2, h=2, base=false);