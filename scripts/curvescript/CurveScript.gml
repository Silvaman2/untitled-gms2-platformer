// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CurveScript(_curve, _channel, variable,hpos){
struct = animcurve_get(_curve);
channel = animcurve_get_channel(struct,_channel);
value = animcurve_channel_evaluate(channel,hpos);
variable = value;
return variable;
}