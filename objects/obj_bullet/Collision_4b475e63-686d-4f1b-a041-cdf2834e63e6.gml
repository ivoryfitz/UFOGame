/// @description When colliding with enemy, reduce enemy's health by 1
///              and remove the bullet from the screen.

with(other) {
  hp = hp - 1;
  image_xscale = image_xscale - (image_xscale * 0.1);
  
  image_yscale = image_yscale - (image_yscale * 0.1);
}


instance_destroy();