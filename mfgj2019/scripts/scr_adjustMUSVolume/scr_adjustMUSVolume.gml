/// @description Adjust SE volume through menu
/// @param volumeChange
var _change = argument[0];

global.MUSVolume += _change;
global.MUSVolume = clamp(global.MUSVolume, 0, 1);
audio_emitter_gain(global.MUSEmitter, global.MUSVolume);
scr_setOptionVariableStrings();