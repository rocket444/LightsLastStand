varying vec2 pos;

uniform vec2 u_pos;
const float zz = 5.;


void main() {
	vec2 dis = pos - u_pos;
	float str = 1./(sqrt(dis.x*dis.x + dis.y*dis.y + zz * zz) - zz);
    gl_FragColor = vec4(vec3(str),1.);
}
