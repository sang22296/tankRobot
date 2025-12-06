include <config.scad>;

module track_link() {
    link_length = 20;
    link_width  = track_width;
    link_height = 10;

    cube([link_length, link_width, link_height]);

    // Add pin sockets for interlocking
    translate([link_length-2, link_width/2, link_height/2])
        cylinder(h=link_height, r=3, $fn=16);
}

track_link();
