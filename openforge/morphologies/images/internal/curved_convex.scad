_basis = 25; 

module curved_convex(r=2, h=2, wall=10.2, base=false, external=false) {
    base_buffer = base ? 6 : 0;
    ext = external ? wall : 0;
    translate([0,0,base_buffer]) color("LightGray") {
        intersection () {
            union() {
                for (i = [0:r-1]) {
                    for (j = [0:r-1]) {
                        translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
                    }
                }

            }
            translate([0,0,-1]) cylinder(_basis*h,_basis*r-wall+ext,_basis*r-wall+ext, $fn=100);
        }
    }
    color("Grey") {
        intersection() {
            cube([_basis*r,_basis*r,1+base_buffer]);
            translate([0,0,-1]) cylinder(_basis*h,_basis*r-wall+ext,_basis*r-wall+ext, $fn=100);
        }
        intersection() {
            difference() {
                cylinder(_basis*h-6+base_buffer,_basis*r+ext,_basis*r+ext, $fn=100);
                translate([0,0,-1]) cylinder(_basis*h+2,_basis*r-wall+ext,_basis*r-wall+ext, $fn=100);
            }
            cube([_basis*r+ext,_basis*r+ext,_basis*h]);
        }
    }
}

//curved_convex(r=2, h=1, wall=10.2, base=false, external=false);
