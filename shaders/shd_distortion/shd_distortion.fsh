//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

const float speed      = 0.002;
const float xfrequency = 20.0;
const float xsize      = 0.0005;

void main()
{
    vec2 uv = v_vTexcoord;   // ← точка с запятой
    uv.x += sin(uv.y * xfrequency + time * speed) * 0.1; // было /10, оставил амплитуду 0.1
    uv.x = fract(uv.x);
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture, uv);
}