/*
By Luis Daniel Casais Mezquida and Lucía María Moya Sans
Bunnyception: bunny reproduction in multiverse
*/

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"

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
    fisheye
    location <0, 0, -60>
    look_at  <0, 0,  0>
}


// BACKGROUND

//   sky_sphere {
//     pigment {
//       gradient y
//       color_map {
//         [0.000 0.002 color rgb <1.0, 0.2, 0.0>
//                      color rgb <1.0, 0.2, 0.0>]
//         [0.002 0.200 color rgb <0.8, 0.1, 0.0>
//                      color rgb <0.2, 0.2, 0.3>]
//       }
//       scale 2
//       translate -1
//     }
//     pigment {
//       bozo
//       turbulence 0.65
//       octaves 6
//       omega 0.7
//       lambda 2
//       color_map {
//           [0.0 0.1 color rgb <0.85, 0.85, 0.85>
//                    color rgb <0.75, 0.75, 0.75>]
//           [0.1 0.5 color rgb <0.75, 0.75, 0.75>
//                    color rgbt <1, 1, 1, 1>]
//           [0.5 1.0 color rgbt <1, 1, 1, 1>
//                    color rgbt <1, 1, 1, 1>]
//       }
//       scale <0.2, 0.5, 0.2>
//     }
//     rotate -135*x
//   }

sphere
{ 0, 1
  hollow // So it doesn't interfere with any media in the scene
  texture{
    pigment{
        image_map{png "fractal.png"}
    }
  }
  scale 100000
}



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
#while (aaa<6)               
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
