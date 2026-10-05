/// @func lerp_in(_a, _b, _t, _power)
/// @param {Real} _power  Степень (2 = мягко, 4 = резко)
function lerp_in(_a, _b, _t, _power = 2) {
    _t = clamp(_t, 0, 1);
    return lerp(_a, _b, power(_t, _power));
}