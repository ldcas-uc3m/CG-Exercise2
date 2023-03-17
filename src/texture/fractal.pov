/*
Simple julia fractal
*/



box { <-1,-1,-1><1,1,1>
    pigment
        {
            julia <.3,.44> 30
            interior 1, 1
            scale 0.5
        }
        finish {
            ambient 0.3
        }
}

camera {
    orthographic
    right x*1 up y*1
    location -z
    look_at 0
}