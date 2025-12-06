include <config.scad>;

module camera_mount() {
    base_length = 30;
    base_width  = 20;
    base_height = 5;

    cube([base_length, base_width, base_height]);

    // Camera slot
    translate([5,5,base_height])
        cube([20,10,15]);

    // Optional tilt hole
    translate([base_length/2, base_width/2, base_height+7])
        cylinder(h=5, r=2, $fn=32);
}

camera_mount();
