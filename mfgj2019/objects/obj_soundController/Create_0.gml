event_inherited();
soundPlayed = false;

global.SEVolume = .5; // Sound Effect Volume (scale of 0 - 10)
global.MUSVolume = .5; // Music Volume (scale of 0-10)

// Initialize emitters to make allow us to alter the sound effects and music independently.
global.SEEmitter = audio_emitter_create();
audio_emitter_gain(global.SEEmitter, global.SEVolume);

global.MUSEmitter = audio_emitter_create();
audio_emitter_gain(global.MUSEmitter, global.MUSVolume);

audio_play_sound_on(global.MUSEmitter, snd_bgm, true, 8);