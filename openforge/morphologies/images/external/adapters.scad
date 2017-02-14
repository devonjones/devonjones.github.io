_basis = 25; 

module external_adapter(x=2, y=1, h=2, base=false, left=true, right=true) {
    base_buffer = base ? 6 : 0;
    wall = 12.5;
    external = true;
    translate([0,0,base_buffer]) color("LightGray") {
        for (i = [0:x-1]) {
            for (j = [0:y-1]) {
                translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
            }
        }

    }
    color("Grey") {
        sub = external ? 0 : wall;
        r = right ? wall : 0;
        l = left ? wall : 0;
        cube([_basis*x,_basis*y,1+base_buffer]);
        translate([l,25-sub,0]) cube([50-r-l,wall,_basis*h-6+base_buffer]);
    }
}

//external_adapter(x=2, y=1, h=2, base=false, left=false, right=true);