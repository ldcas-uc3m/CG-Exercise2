/*
By Luis Daniel Casais Mezquida and Lucía María Moya Sans
Bunnyception: bunny reproduction in multiverse
1024x768
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

sphere { 0, 1
  hollow  // So it doesn't interfere with any media in the scene
  texture{
    pigment{
        image_map{png "fractal.png"}
    }
  }
  scale 100000
}


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
