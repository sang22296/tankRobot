include <config.scad>;

// Main chassis base
module chassis() {
    length = 300;   // overall length
    width = track_width*2 + 20;
    height = 20;

    // Base plate
    cube([length, width, height]);

    // Battery compartment
    translate([50, 10, 5])
        cube([battery_length, battery_width, battery_height]);

    // Jetson Nano Dev Kit top plate
    translate([100, width/2 - jetson_plate_width/2, height])
        cube([jetson_plate_length, jetson_plate_width, 5]);
}

chassis();
