_basis = 25;

module arrow_slit(x=2, y=2, h=2, base=false) {
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
            translate([_basis*x/2,_basis*y+2,20-6+base_buffer]) scale([.6,1,1]) rotate([0,0,180+45]) cube([20,20,25]);
        }
    }
}

arrow_slit(x=2, y=2, h=2, base=false);
