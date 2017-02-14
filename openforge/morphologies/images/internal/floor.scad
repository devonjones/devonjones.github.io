_basis = 25;

module floor_tile(x=2, y=2, base=false) {
    base_buffer = base ? 6 : 0;
    translate([0,0,base_buffer]) color("LightGray") {
        for (i = [0:x-1]) {
            for (j = [0:y-1]) {
                translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
            }
        }
    }

    color("Grey") {
        cube([_basis*x,_basis*y,1+base_buffer]);
    }
}

module construction_kit_wall_floor(x=2, y=2) {
    difference() {
        floor_tile(x=x, y=y, base=base);
        color("Grey") translate([-1,_basis*y-10.2-1,-1]) cube([_basis*x+2,10.2+2,10]);
    }
}

module construction_kit_corner_floor(x=2) {
    difference() {
        floor_tile(x=x, y=x);
        color("Grey") translate([-1,_basis*x-10.2-1,-1]) cube([_basis*x+2,10.2+2,10]);
        color("Grey") translate([_basis*x-10.2-1,-1,-1]) cube([10.2+2,_basis*x+2,10]);
    }
}

//floor_tile(x=2, y=2, base=true);
//construction_kit_wall_floor(x=2, y=2);
//construction_kit_corner_floor(x=2, y=2);
