/// @function relerp(old_min, old_max, value, new_min, new_max)
/// @description Returns the equivalent of a value from an old range onto a new range.
/// @param {Real} old_min The lower bound of the original range.
/// @param {Real} old_max The upper bound of the original range.
/// @param {Real} value The current value to map.
/// @param {Real} new_min The lower bound of the target range.
/// @param {Real} new_max The upper bound of the target range.

function relerp(old_min, old_max, value, new_min, new_max) {
    return new_min + (new_max - new_min) * (value - old_min) / (old_max - old_min);
}