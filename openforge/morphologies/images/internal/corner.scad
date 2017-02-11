_basis = 25;

module corner(x=2,h=2) {
    color("LightGray") {
        for (i = [0:x-1]) {
            for (j = [0:x-1]) {
                translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
            }
        }
    }
    color("Grey") {
        cube([_basis*x,_basis*x,1]);
        translate([0,_basis*x-10.2,0]) cube([_basis*x,10.2,_basis*h-6]);
        translate([_basis*x-10.2,0,0]) cube([10.2,_basis*x,_basis*h-6]);
    }
}

corner(x=2);