/// @function ds_grid_debug_print(_grid, [_title])
/// @description Выводит ds_grid в консоль с выравниванием колонок.
/// @param {Id.Grid} _grid
/// @param {String} [_title]  Необязательный заголовок
function debug_ds_grid(_grid, _title) {
    var _w = ds_grid_width(_grid);
    var _h = ds_grid_height(_grid);

    // 1. Приводим ячейки к строкам, считаем ширину колонок
    var _cells = [];
    var _col_widths = array_create(_w, 0);

    for (var _cy = 0; _cy < _h; _cy++) {
        var _row = [];
        for (var _cx = 0; _cx < _w; _cx++) {
            var _s = string(ds_grid_get(_grid, _cx, _cy));
            _row[_cx] = _s;
            if (string_length(_s) > _col_widths[_cx]) {
                _col_widths[_cx] = string_length(_s);
            }
        }
        _cells[_cy] = _row;
    }

    // 2. Заголовок
    if (!is_undefined(_title)) {
        show_debug_message("=== " + _title + " (" + string(_w) + "x" + string(_h) + ") ===");
    } else {
        show_debug_message("=== ds_grid " + string(_grid) + " (" + string(_w) + "x" + string(_h) + ") ===");
    }

    // 3. Печатаем строки с padding'ом
    for (var _cy = 0; _cy < _h; _cy++) {
        var _line = "";
        for (var _cx = 0; _cx < _w; _cx++) {
            var _s = _cells[_cy][_cx];
            var _pad = _col_widths[_cx] - string_length(_s);
            _line += _s;
            if (_pad > 0) _line += string_repeat(" ", _pad);
            if (_cx < _w - 1) _line += " | ";
        }
        show_debug_message(_line);
    }

    show_debug_message("=== end ===");
}