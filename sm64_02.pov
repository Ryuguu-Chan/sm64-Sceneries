#include "colors.inc"

// the camera
camera
{
      location 0
}  

// the light source (duh)
light_source
{
    1
    color White
    shadowless
}

// the bg cube
box
{
    <0, 0, 0>, 100  
    texture
    {  
        uv_mapping
        pigment
        {
            image_map
            {
                png "tex/BG01.png"
            }
            scale 0.02
        }   
    }
    translate -50 
    scale 1000
}       

// probably the easiest one to make lol