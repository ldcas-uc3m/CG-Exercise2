/*
By Luis Daniel Casais Mezquida and Lucía María Moya Sans
*/

#include "colors.inc"
#include "shapes.inc"

#include "texture.inc"


global_settings{ assumed_gamma 1 }

// LIGHTS
light_source {
    <1, 5, 2.5> // <x, y, z>
    color <1.0, 1.0,  1.0> // <red, green, blue>
    area_light <5, 0, 0>, <0, 0, 5>, 5, 5 // <x, y, z>, <x, y, z>, size 1, size 2
    adaptive 1
    jitter
}


// CAMERA
camera {
    location <0, 1.5, -5.5>
    look_at  <0, 1.5,  0>
}


// BACKGROUND

plane { <0, 0, 1>, 0
    pigment {
        checker color White color Gray
    }
    finish {
        ambient 0.3
    }
}


// OBJECTS


// ROOM
plane { <0, 1, 0>, 0
    pigment {
        color Black
    }
    finish {
        reflection 0.4
    }

  }

plane { <0, 0, 1>, 3
    pigment {
        color White
    }
    finish {
        reflection 0
        ambient 0.3
        diffuse 0.1
    }
    
}
