varying vec2 pos;
varying vec4 col;

uniform vec2 u_pos;
uniform float zz;
uniform float u_str;
uniform float u_fov;
uniform float u_dir;

#define PI 3.1415926538

void main() {
	vec2 dis = pos - u_pos;
	float str = 1./(sqrt(dis.x*dis.x + dis.y*dis.y + zz * zz) - zz) * u_str;
	
	//convert to radians
	float dir = radians(u_dir);
	float hfov = radians(u_fov)*0.5;
	
	
	//setup FOV
	if (hfov < PI){
		float rad = atan(-dis.y,dis.x);	
		float adis = abs(mod(rad+2.*PI,2.*PI) - dir);
		adis = min(adis, 2.*PI - adis);
		str *= clamp((1.-adis/hfov)*5.,0.,1.);
	}
	
    gl_FragColor = col*vec4(vec3(str),1.);
}
