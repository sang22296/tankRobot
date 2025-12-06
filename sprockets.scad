include <config.scad>;

module drive_sprocket(teeth_count = 12, thickness = 8) {
    radius = sprocket_diameter / 2;
    
    // Base cylinder
    cylinder(h = thickness, r = radius, $fn = 100);

    // Teeth (simple rectangular for LEGO-style)
    for(i = [0 : teeth_count-1]) {
        angle = 360/teeth_count * i;
        rotate([0,0,angle])
            translate([radius, -track_width/4, 0])
                cube([5, track_width/2, thickness]);
    }

    // Hole for motor D-shaft
    translate([0,0,-1])
        cylinder(h = thickness+2, r = motor_shaft/2, $fn=32);
}

drive_sprocket();
