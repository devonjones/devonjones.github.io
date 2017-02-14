_basis = 25; 

module angled(x=2, h=2, wall=10.2, base=false, external=false) {
    y = x;
    base_buffer = base ? 6 : 0;
    color("LightGray") intersection() {
        rotate([0,0,-45*1.5]) translate([-_basis*3,0,base_buffer]) {
            for (i = [0:6]) {
                for (j = [0:6]) {
                    adj = j % 2 == 0 ? _basis/2 : 0;
                    translate([_basis*i+1-adj,_basis*j+1,0]) cube([23,23,4.5]);
                }
            }
        }
        difference() {
            translate([0,1,0]) cube([_basis*x,_basis*y,6+base_buffer]);
            translate([_basis*x,0,0]) rotate([0,0,22.5]) translate([-1,-1,-1]) cube([_basis*x*2,_basis*y*2,_basis]);
            rotate([0,0,45]) translate([-1,-1,-1]) cube([_basis*x*2,_basis*y*2,_basis]);
        }        
    }
    color("Grey") {
        sub = external ? 0 : wall;
        ext = external ? wall : 0;
        difference() {
            cube([_basis*x,_basis*y,1+base_buffer]);
            translate([_basis*x,0,0]) rotate([0,0,22.5]) translate([0,-1,-1]) cube([_basis*x*2,_basis*y*2,_basis]);
            rotate([0,0,45]) translate([-1,0,-1]) cube([_basis*x*2,_basis*y*2,_basis]);
        }
        difference() {
            translate([_basis*x-wall+ext,0,0]) rotate([0,0,22.5]) translate([0,-10,0]) cube([wall,_basis*x+ext,_basis*h-6+base_buffer]);
            translate([_basis/2,-_basis*y,-1]) cube([_basis*x+ext,_basis*y,_basis*h-6+base_buffer+2]);
            rotate([0,0,45]) translate([-1,0,-1]) cube([_basis*x*2,_basis*y*2,_basis*h-6+base_buffer+2]);
        }
    }
}

//angled(x=2, h=2, wall=10.2, base=false, external=false);
