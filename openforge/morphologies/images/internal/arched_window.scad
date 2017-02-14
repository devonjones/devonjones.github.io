_basis = 25;

module arched_window_hole() {
    translate([-25,0,11.2-.8-6]) {
        translate([15.1,-25,12.6]) cube([19.8,40,13.5]);
        translate([25,-25,12.6+13.5]) rotate([-90,0,0]) cylinder(40,19.8/2,19.8/2,$fn=100);
    }
}

module arched_window(x=2, y=2, wall=10.2, base=false, external=false) {
    h=2;
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
        cube([_basis*x,_basis*y,1+base_buffer]);
        difference() {
            translate([0,_basis*y-sub,0]) cube([_basis*x,wall,_basis*h-6+base_buffer]);
            translate([_basis*x/2,_basis*y,base_buffer]) arched_window_hole();
        }
    }
}

module construction_kit_wall_arched_window(x=2, y=2) {
    difference() {
        arched_window(x=x, y=y);
        color("Grey") translate([-1,-1,-1]) cube([_basis*x+2,_basis*y-10.2+1,6.5]);
    }
}

module construction_kit_corner_arched_window(x=2, y=2) {
    h=2;
    translate([10.2/2,0,0]) difference() {
        arched_window(x=x, y=y);
        color("Grey") translate([-1,-1,-1]) cube([_basis*x+2,_basis*y-10.2+1,6.5]);
        color("Grey") translate([-1,-1,-1]) cube([10.2/2+1,_basis*y+2,_basis*h+2]);
        color("Grey") translate([_basis*x-10.2/2,-1,-1]) cube([10.2/2+1,_basis*y+2,_basis*h+2]);
    }
}

//arched_window(x=2,y=2,wall=10.2,base=false, external=false);
//construction_kit_wall_arched_window(x=2,y=2,base=false);
//construction_kit_corner_arched_window(x=2,y=2,base=false);
