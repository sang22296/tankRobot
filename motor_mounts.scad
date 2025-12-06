include <config.scad>;

module motor_mount() {
    plate_thickness = 5;
    plate_length = motor_length;
    plate_width = motor_length / 2;

    // Mount plate
    cube([plate_length, plate_width, plate_thickness]);

    // M3 holes for D-shaft motor
    hole_spacing = 29; // typical front-face holes
    translate([hole_spacing/2, plate_width/2, plate_thickness/2])
        cylinder(h=plate_thickness, r=motor_mount_hole/2, $fn=32);
}

motor_mount();
