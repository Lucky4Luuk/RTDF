uniform float layer;
uniform sampler3D volumeTexture;

vec4 effect(vec4 color, sampler2D texture, vec2 tex_coords, vec2 screen_coords) {
  return Texel(volumeTexture, vec3(tex_coords, layer));
}
