function audio_play_sfx(soundid, gain = 1, pitch = 1, priority = 15,  loop = false, offset = 0){
audio_play_sound(soundid, priority, loop, gain, offset, pitch)
}