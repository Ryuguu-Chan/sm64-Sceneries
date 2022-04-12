/*********************************/
/*       MADE BY OGAN OEZKUL     */
/*  from 25.06.2021 - 26.06.2021 */
/*********************************/

// for the checkerboard thing
#include "colors.inc"  
       
// The background color
background { color rgb <0, 0, 0> }       
      
// the checkerboard
plane
{
    y, -1
    
    // the checkerboard thing
    pigment { checker White rgb <0.05, 0.05, 0.05> }
}          
 
// the walls
box { <0, -1, 0>, <1, 100, 100> texture { uv_mapping pigment { image_map { png "tex/WALL00.png" } scale -0.005 } } translate <10, 0, 5>                     }  // R
box { <0, -1, 0>, <1, 100, 100> texture { uv_mapping pigment { image_map { png "tex/WALL00.png" } scale -0.005 } } translate <-10, 0, 5>                    }  // L    
box { <0, -1, 0>, <100, 100, 1> texture { uv_mapping pigment { image_map { png "tex/WALL00.png" } scale -0.005 } } translate <-10, 0, 90>                   }  // DEAD_END          
box { <0, -1, 0>, <1, 100, 100> texture { uv_mapping pigment { image_map { png "tex/WALL00.png" } scale -0.005 } } rotate <0, 0, 90> translate <10, 20, 0>  }  // ROOF        
  

// the bowser portrait
box { <0, 0, 0>, <15, 15, 10> texture   { uv_mapping pigment { image_map { png "tex/BOW.png"    } scale 0.25 scale 1.35*y scale -1*x translate <0, -0.01, 0> } }  translate <-7, 3, 80> }

                 
// the camera                   
camera
{
    location <0, 10, 0>
}

// the light source
light_source
{
    <0, 10, 0>
    color Red   
}             
