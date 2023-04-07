#version 120

#if defined IRIS_FEATURE_ENTITY_TRANSLUCENT && !defined IS_IRIS
#define OLD
#include "/lib/iris_required.glsl"
#elif !defined IS_IRIS
#include "/lib/iris_required.glsl"
#else
uniform sampler2D texture;

varying vec4 color;
varying vec2 coord0;

void main()
{
    gl_FragData[0] = color * texture2D(texture,coord0);
}
#endif
