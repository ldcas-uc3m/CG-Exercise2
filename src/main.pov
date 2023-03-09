/*
By Luis Daniel Casais Mezquida and Lucía María Moya Sans
Bunnyception: bunny reproduction in multiverse
*/

#include "colors.inc"
#include "shapes.inc"

#include "texture.inc"
#include "bunny.inc"


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
    location <0, 0, -60>
    look_at  <0, 0,  0>
}


// BACKGROUND

// plane { <0, 0, 1>, 0
//     pigment {
//         checker color White color Gray
//     }
//     finish {
//         ambient 0.3
//     }
// }


// OBJECTS
#declare bunny = object {
    Bunny
    scale <20.0, 20.0, 20.0> // <x, y, z>
    texture {bunny_texture}
}

#declare fractal = bunny;             
#declare aaa = 0;               
#while (aaa<4)               
   #declare fractal =                
      union {      
         object{bunny}                          
         object { fractal scale 0.5 translate <10,0,0>}                
         object { fractal scale 0.5 translate <-10,0,0>}                
         object { fractal scale 0.5 translate <0,10,0>}                
         object { fractal scale 0.5 translate <0,-10,0>}                
         object { fractal scale 0.5 translate <0,0,10>}                
         object { fractal scale 0.5 translate <0,0,-10>}                
      }             
   #declare aaa = aaa + 1;
#end     

object {
   fractal rotate <0,45,> scale 10 translate <4,4,0>*(-4) 
    rotate <0,180,0> 
}


// // ROOM
// plane { <0, 1, 0>, 0
//     pigment {
//         color Black
//     }
//     finish {
//         reflection 0.4
//     }

//   }

// plane { <0, 0, 1>, 3
//     pigment {
//         color White
//     }
//     finish {
//         reflection 0
//         ambient 0.3
//         diffuse 0.1
//     }
    
// }
