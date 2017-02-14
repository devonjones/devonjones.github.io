_basis = 25;

module square_window_hole() {
    translate([-25,0,11.2-6]) {
        translate([25-13.5,-12.5,9]) cube([27,40,24]);
    }
}

module square_window(x=2, y=2, h=2, base=false) {
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
        difference() {
            translate([0,_basis*y-10.2,0]) cube([_basis*x,10.2,_basis*h-6+base_buffer]);
            translate([_basis*x/2, _basis*y, base_buffer]) square_window_hole();
        }
    }
}

module construction_kit_wall_square_window(x=2, y=2) {
    difference() {
        square_window(x=x, y=y);
        color("Grey") translate([-1,-1,-1]) cube([_basis*x+2,_basis*y-10.2+1,6.5]);
    }
}

module construction_kit_corner_square_window(x=2, y=2) {
    h=2;
    translate([10.2/2,0,0]) difference() {
        square_window(x=x, y=y);
        color("Grey") translate([-1,-1,-1]) cube([_basis*x+2,_basis*y-10.2+1,6.5]);
        color("Grey") translate([-1,-1,-1]) cube([10.2/2+1,_basis*y+2,_basis*h+2]);
        color("Grey") translate([_basis*x-10.2/2,-1,-1]) cube([10.2/2+1,_basis*y+2,_basis*h+2]);
    }
}

//square_window(x=2, y=2, h=2, base=false);
//construction_kit_wall_square_window(x=2, y=2);
construction_kit_corner_square_window(x=2, y=2);
