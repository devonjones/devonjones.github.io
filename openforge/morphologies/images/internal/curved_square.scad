_basis = 25;

module curved_square(r=2, h=2, base=false) {
    base_buffer = base ? 6 : 0;
    translate([0,0,base_buffer]) color("LightGray") {
        translate([1,1,0]) cube([23,23,4.5]);
        translate([25+1,1,0]) cube([23,23,4.5]);
        translate([1,25+1,0]) cube([23,23,4.5]);
        translate([25+1,25+1,0]) cube([23,23,4.5]);
    }
    color("Grey") {
        cube([50,50,1+base_buffer]);
        intersection() {
            difference() {
                cylinder(_basis*h-6+base_buffer,_basis*r,_basis*r, $fn=100);
                translate([0,0,-1]) cylinder(_basis*h+2,_basis*r-10.2,_basis*r-10.2, $fn=100);
            }
            cube([_basis*r,_basis*r,_basis*h]);
        }
    }
}

curved_square(r=2, h=2, base=false);