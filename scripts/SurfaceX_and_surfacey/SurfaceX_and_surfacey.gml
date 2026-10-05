function x_to_surface_x(_x, surf_w) {
    return (_x - Camera.view_x) / global.device_width * surf_w;
}

function y_to_surface_y(_y, surf_h) {
    return (_y - Camera.view_y) / global.device_height * surf_h;
}