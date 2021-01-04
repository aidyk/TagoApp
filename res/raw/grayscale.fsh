precision highp float;

uniform vec3                iResolution;
uniform float               iGlobalTime;
uniform sampler2D           iChannel0;
varying vec2                texCoord;

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 uv = fragCoord.xy;
  vec3 ink = vec3(0.58, 0.58, 0.58);

	vec3 tex = texture2D( iChannel0, uv ).rgb;
	float sat = floor(256.0*length(tex))/256.0;

  fragColor = vec4(sat*ink,1.0);
}

void main() {
	mainImage(gl_FragColor, texCoord);
}
