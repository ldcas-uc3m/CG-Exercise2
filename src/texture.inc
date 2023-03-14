#declare bunny_texture = texture {
    pigment {
        image_map {png "texture.png"}
    }
    normal {
        bump_map {
            png "texture/fractal.png"
            bump_size 100
        }
    }
    finish {
        ambient 1.3
        phong 0.5
    }
}

// for testing purposes:
// object { 
//     bunny
//     scale <12, 12, 12>
//     translate <5, -30, 0>
//     rotate <0, 300, 0> // <x°, y°, z°>
// }