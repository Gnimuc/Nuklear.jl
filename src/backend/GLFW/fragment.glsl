#version 150 core

uniform sampler2D tex;

in vec2 frag_uv;
in vec4 frag_color;

out vec4 out_color;

void main(){
   out_color = frag_color * texture(tex, frag_uv.st);
}
