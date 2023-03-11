/*
Bunny texture.
1024x1024

Based on the Wada fractal effect, and Rasta Robert's Hyperspace portal (http://paulbourke.net/fractals/povfrac/final/0031.html)
*/

#include "shapes.inc"


#declare L = .5;
#declare C = sqrt(3);

#declare Mirror = texture {
    pigment {
        color <1.0, 1.0, 1.0>
    } 
    finish {
        ambient 0
        brilliance 5
        reflection 1
        metallic
    }
}


global_settings { 
    assumed_gamma 1
    max_trace_level 15
}


// CAMERA
camera {
    orthographic
    right x up y
    location <L,-L,L>
    look_at 0
}


// LIGHTS
light_source {<-L,-L,-L> color <.2,0,0>}
light_source {<-L,L,L> color <0,.2,0>}
light_source {<L,L,-L> color <0,0,.2>}


// OBJECTS
sphere {<-.2,.2,-.2>, .3 texture {Mirror}}   
sphere {<.2,-.2,.2>, .3 texture {Mirror}}   
triangle {< -C,C,-C >,<-C,-C,C>,<C,C,C> texture {Mirror}}
triangle {< -C,C,-C >,<C,C,C>,<C,-C,-C> texture {Mirror}}
triangle {< -C,C,-C >,<C,-C,-C>,<-C,-C,C> texture {Mirror}}
triangle {< C,-C,-C >,<C,C,C>,<-C,-C,C> texture {Mirror}}

