function ms_to_timer_string(total_ms){
// Assumes 'total_ms' is your variable tracking total milliseconds
var _minutes = total_ms div 60000;
var _seconds = (total_ms div 1000) mod 60;
var _milliseconds = total_ms mod 1000;

// Format numbers to always show leading zeros
var _str_mins = string_replace_all(string_format(_minutes, 2, 0), " ", "0");
var _str_secs = string_replace_all(string_format(_seconds, 2, 0), " ", "0");
var _str_ms   = string_replace_all(string_format(_milliseconds, 3, 0), " ", "0");

return _str_mins + ":" + _str_secs
}