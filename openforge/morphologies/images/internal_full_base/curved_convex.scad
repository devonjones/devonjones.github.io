color("LightGray") {
    intersection () {
        union() {
            translate([1,1,0]) cube([23,23,6+4.5]);
            translate([25+1,1,0]) cube([23,23,6+4.5]);
            translate([1,25+1,0]) cube([23,23,6+4.5]);
            translate([25+1,25+1,0]) cube([23,23,6+4.5]);
        }
        cylinder(50,50-10.2,50-10.2);
    }
}
color("Grey") {
    intersection() {
        cube([50,50,7]);
        cylinder(50,50-10.2,50-10.2);
    }
    intersection() {
        difference() {
            cylinder(50-6,50,50);
            cylinder(50,50-10.2,50-10.2);
        }
        cube([50,50,50]);
    }
}
