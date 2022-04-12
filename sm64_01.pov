#include "colors.inc"
#include "Textures.inc"

// the skybox
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
                png "tex/BG00.png"
            }
            scale 0.2
        }   
    }
    translate -50 
    scale 1000
}   

// the ground
box
{
    0, <10, 1, 10>
    texture
    {
        uv_mapping
        pigment
        {       
            image_map
            {
                png "tex/GROUND00.png"
            }
        } 
        scale 0.01  
    } 
    translate <-10, -2, -5>
    rotate <0, (90/2), 0>
}   

box
{
    0, 1
    texture
    {
        pigment
        {
            image_map
            {
                png "tex/MA.png"
            }
        }
    }  
    translate 10*z
    rotate 20*y
    
}

// the floating pyramide
#declare Pyramid = mesh
{
    // the base
    triangle { <0, 0, 0>, <2, 0, 2>, <2, 0, 0> }
    triangle { <0, 0, 0>, <2, 0, 2>, <0, 0, 2> }
    
    // the triangles
    triangle 
    { 
        <0, 0, 0>, <1, 1, 1>, <2, 0, 0> 
        uv_vectors <0, 0>, <1, 1>, <2, 0>
    }                                  
    
    triangle 
    { 
        <2, 0, 0>, <1, 1, 1>, <2, 0, 2> 
        uv_vectors <2, 0>, <1, 1>, <0, 0>
    } 
    
    // no need UV vectors for them
    // since they are pratically invisible in the image
    triangle { <2, 0, 2>, <1, 1, 1>, <0, 0, 2> }
    triangle { <0, 0, 2>, <1, 1, 1>, <0, 0, 0> }
    
    texture
    {
        uv_mapping
        pigment
        {
            image_map
            {
                png "tex/PYRA.png"
            }
            //scale 1
        }
    }
}         

// the weird tower thing
mesh
{           
         
    // TODO: faires les vecteurs UV pour faire de l'UV mapping avec les textures SM64
    // for seeing how i determined the points
    // go read the file PLAN00.jpg
    
    // the bottom part triangles
    
    triangle
    { 
        <0, 0, 0>, <1, 0, 0>, <1, 1, 0> 
        uv_vectors <0, 0>, <1, 0>, <1, 1> 
    }
    
    triangle 
    { 
        <1, 1, 0>, <0, 1, 0>, <0, 0, 0>
        uv_vectors <1, 1>, <0, 1>, <0, 0>
    }
    

    triangle
    { 
        <1, 0, 0>, <1, 1, 0>, <1, 1, 1> 
        uv_vectors <1, -1>, <1, 0>, <0, 0>
    }
    
    triangle 
    { 
        <1, 1, 1>, <1, 0, 1>, <1, 0, 0> 
        uv_vectors <1, 1>, <1, 0>, <0, 0>
    }
    
    // since they aren't visible, i just made triangles (without any UV vectors)
    triangle { <0, 0, 0>, <0, 1, 0>, <0, 1, 1> }  
    triangle { <0, 0, 1>, <1, 0, 1>, <1, 1, 1> }
    triangle { <1, 1, 1>, <0, 1, 1>, <0, 0, 1> }
    triangle { <0, 0, 1>, <0, 1, 1>, <0, 0, 0> }

    // the joint for the top
    triangle 
    { 
        <0, 1, 0>, <0, 1, 1>, <0.166, 1, 0.834> 
        uv_vectors <1, 1>, <0, 1>, <0, 0> 
    }
    
    triangle
    { 
        <0, 1, 0>, <0.166, 1, 0.834>, <0.166, 1, 0.166>
        uv_vectors <1, 1>, <1, 0>, <0, 0> 
    }   
    
    triangle 
    { 
        <0, 1, 0>, <0.166, 1, 0.166>, <1, 1, 0> 
        uv_vectors <1, 1>, <1, 0>, <0, 0> 
    }           
    
    triangle 
    { 
        <1, 1, 0>, <0.166, 1, 0.166>, <0.834, 1, 0.166> 
        uv_vectors <1, 1>, <0, 1>, <0, 0> 
    }
    
    triangle 
    {
        <1, 1, 0>, <0.834, 1, 0.166>, <1, 1 ,1> 
        uv_vectors <1, 1>, <0, 1>, <0, 0> 
    }
    
    triangle 
    { 
        <1, 1, 1>, <0.834, 1, 0.834>, <0.834, 1, 0.166> 
        uv_vectors <1, 1>, <0, 1>, <0, 0> 
    }          
    
    // not visible in the picture
    triangle { <1, 1, 1>, <0.834, 1, 0.834>, <0.166, 1, 0.834> }
    triangle { <1, 1, 1>, <0, 1, 1>, <0.166, 1, 0.834> }
    
    // the top rectangle
    triangle 
    { 
        <0.834, 1, 0.834>, <0.834, 4, 0.834>, <0.834, 1, 0.166> 
        uv_vectors <0, 0>, <0, 2>, <1, 0>
    }
    
    triangle 
    { 
        <0.834, 1, 0.166>, <0.834, 4, 0.834>, <0.834, 4, 0.166> 
        uv_vectors <0, 0>, <1, 2>, <0, 2>
    }
    
    triangle 
    { 
        <0.834, 1, 0.166>, <0.834, 4, 0.166>, <0.166, 1, 0.166> 
        uv_vectors <0, 0>, <0, 2>, <1, 0>
    }
    
    triangle 
    { 
        <0.166, 1, 0.166>, <0.834, 4, 0.166>, <0.166, 4, 0.166> 
        uv_vectors <0, 0>, <1, 2>, <0, 2>
    }                                                                  
    
    // all behind the other polygons :3
    triangle { <0.166, 1, 0.834>, <0.166, 4, 0.834>, <0.834, 1, 0.834> }
    triangle { <0.834, 1, 0.834>, <0.166, 4, 0.834>, <0.834, 4, 0.834> }    
    triangle { <0.166, 1, 0.166>, <0.166, 4, 0.166>, <0.166, 1, 0.834> }
    triangle { <0.166, 1, 0.834>, <0.166, 4, 0.834>, <0.166, 4, 0.166> }
    
    texture
    {      
        uv_mapping 
        pigment
        {
            image_map
            {
                png "tex/BRICK01.png"
            } 
            //White_Marble    
        }   
    }      
    scale 0.5
    translate <-1.5, -1.2, 3>
    rotate 20*y
    
}
                 

camera
{                
    location <0, -0.3, 0>
    
    // temp
    //rotate 30*y
    //translate -5*x
}           

light_source
{
    1
    color White
    shadowless
} 

object
{
    Pyramid
    translate <-5, 0, 13>
    scale 2*y    
}