var nbRandom = random(20);
if (global.actualRoom == "R_Death"){global.actualRoom = "R_Test"}
for (var i = 0; i <= nbRandom; i++)
{
//instance_create_layer(x+image_xscale*32,y+image_yscale/2,"Particles",O_SelectParticle);
instance_create_layer(mouse_x,mouse_y,"Particles",O_SelectParticle);
}