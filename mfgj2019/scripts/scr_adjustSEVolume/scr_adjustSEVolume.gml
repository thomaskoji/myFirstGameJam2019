/// @description Adjust SE volume through menu
/// @param volumeChange
var _change = argument[0];

global.SEVolume += _change;
global.SEVolume = clamp(global.SEVolume, 0, 1);
audio_emitter_gain(global.SEEmitter, global.SEVolume);
scr_setOptionVariableStrings();