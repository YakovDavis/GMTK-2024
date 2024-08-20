// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function metal_to_size(_metal)
{
	return sqrt(clamp(_metal, 0, 1500)) / 10 + 1;
}