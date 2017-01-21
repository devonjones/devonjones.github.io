color("LightGray") {
    difference () {
        union() {
            translate([1,1,0]) cube([23,23,6+4.5]);
            translate([25+1,1,0]) cube([23,23,6+4.5]);
            translate([1,25+1,0]) cube([23,23,6+4.5]);
            translate([25+1,25+1,0]) cube([23,23,6+4.5]);
        }
        translate([0,0,-1]) cylinder(50,50-10.2,50-10.2);
    }
}
color("Grey") {
    difference() {
        cube([50,50,7]);
        translate([0,0,-1]) cylinder(50,50-10.2,50-10.2);
    }
    intersection() {
        difference() {
            cylinder(50-6,50,50);
            translate([0,0,-1]) cylinder(52,50-10.2,50-10.2);
        }
        cube([50,50,50]);
    }
}
