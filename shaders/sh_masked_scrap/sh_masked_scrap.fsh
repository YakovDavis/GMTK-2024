//
// Masked draw fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D u_sMask;
uniform float u_fBaseUVs[8];
uniform float u_fMaskUVs[8];
uniform vec2 u_vMaskScale;

void main()
{
	float normalized_x = (v_vTexcoord.x - u_fBaseUVs[0]) / (u_fBaseUVs[2] - u_fBaseUVs[0]);
	float normalized_y = (v_vTexcoord.y - u_fBaseUVs[1]) / (u_fBaseUVs[3] - u_fBaseUVs[1]);
	normalized_x = (normalized_x - 0.5) * u_vMaskScale.x + 0.5;
	normalized_y = (normalized_y - 0.5) * u_vMaskScale.y + 0.5;
	vec2 mask_texcoord = vec2(u_fMaskUVs[0] + normalized_x * (u_fMaskUVs[2] - u_fMaskUVs[0]),
		u_fMaskUVs[1] + normalized_y * (u_fMaskUVs[3] - u_fMaskUVs[1]));
    gl_FragColor = v_vColour * texture2D(u_sMask, mask_texcoord) * texture2D(gm_BaseTexture, v_vTexcoord);
}
