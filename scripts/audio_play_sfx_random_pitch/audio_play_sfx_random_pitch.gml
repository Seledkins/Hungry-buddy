function audio_play_sfx_random_pitch(soundid, gain, putch_start = 0.8, pitch_end = 1.2, priority = 15,  loop = false, offset = 0){
audio_play_sound(soundid, priority, loop, gain, offset, random_range(putch_start, pitch_end))
}