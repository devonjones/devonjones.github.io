color("LightGray") {
    intersection() {
        union() {
            translate([1,1,0]) cube([23,23,4.5]);
            translate([25+1,1,0]) cube([23,23,4.5]);
            translate([1,25+1,0]) cube([23,23,4.5]);
            translate([25+1,25+1,0]) cube([23,23,4.5]);
        }
        cylinder(50,50,50);
    }
}

color("Grey") {
    intersection() {
        cube([50,50,7-6]);
        cylinder(50,50,50);
    }
    intersection() {
        difference() {
            cylinder(50-6,50+12.5,50+12.5);
            translate([0,0,-1]) cylinder(52,50,50);
        }
        cube([50+12.5,50+12.5,50]);
    }
}
