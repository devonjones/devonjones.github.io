_basis = 25; 

module curved_convex(r=2, h=2, base=false) {
    base_buffer = base ? 6 : 0;
    translate([0,0,base_buffer]) color("LightGray") {
        intersection () {
            union() {
                for (i = [0:r-1]) {
                    for (j = [0:r-1]) {
                        translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
                    }
                }

            }
            translate([0,0,-1]) cylinder(_basis*h,_basis*r-10.2,_basis*r-10.2, $fn=100);
        }
    }
    color("Grey") {
        intersection() {
            cube([_basis*r,_basis*r,1+base_buffer]);
            translate([0,0,-1]) cylinder(_basis*h,_basis*r-10.2,_basis*r-10.2, $fn=100);
        }
        intersection() {
            difference() {
                cylinder(_basis*h-6+base_buffer,_basis*r,_basis*r, $fn=100);
                translate([0,0,-1]) cylinder(_basis*h+2,_basis*r-10.2,_basis*r-10.2, $fn=100);
            }
            cube([_basis*r,_basis*r,_basis*h]);
        }
    }
}

curved_convex(r=2, h=2, base=false);
