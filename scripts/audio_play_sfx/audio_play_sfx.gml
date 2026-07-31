function audio_play_sfx(soundid, pitch = 1, priority = 15,  loop = false, gain = 1, offset = 0){
audio_play_sound(soundid, priority, loop, gain, offset, pitch)
}