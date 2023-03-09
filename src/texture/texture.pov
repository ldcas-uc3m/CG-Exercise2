/*
By Luis Daniel Casais Mezquida and Lucía María Moya Sans
*/

#include "colors.inc"
#include "shapes.inc"


global_settings{ assumed_gamma 1 }


// CAMERA
camera {
    orthographic
    right x*1 up y*1
    location -z
    look_at 0
}

light_source { 0 color rgb 1 }  // default light


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

