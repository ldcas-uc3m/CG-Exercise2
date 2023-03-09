/*
Bunny texture.
1024x1024
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




// global_settings {max_trace_level 15}
// #declare C = sqrt(3) ;
// #declare L = .22 ;
// camera {location <L,-L,L> up y right x look_at <0,0,0>}
// light_source {<-L,-L,-L> color <.1,0,0>}
// light_source {<-L,L,L> color <0,.1,0>}
// light_source {<L,L,-L> color <0,0,.1>}
// #declare Mirror = texture {pigment{color<1.0,1.0,1.0>} finish {ambient 0 brilliance 1 reflection 1 metallic}}
// sphere {<-.5,.5,-.5>, .7 texture {Mirror}}   
// triangle {< -C,C,-C >,<-C,-C,C>,<C,C,C> texture {Mirror}}
// triangle {< -C,C,-C >,<C,C,C>,<C,-C,-C> texture {Mirror}}
// triangle {< -C,C,-C >,<C,-C,-C>,<-C,-C,C> texture {Mirror}}
// triangle {< C,-C,-C >,<C,C,C>,<-C,-C,C> texture {Mirror}}
