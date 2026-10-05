function instance_destroy_except(_objects) {
    // Приводим к массиву, если передали один объект
    if (!is_array(_objects)) _objects = [_objects];

    with (all) {
        // Проверяем: есть ли object_index этого инстанса в списке исключений
        var _keep = false;
        for (var i = 0; i < array_length(_objects); i++) {
            if (object_index == _objects[i]) {
                _keep = true;
                break;
            }
        }

        if (!_keep) {
            instance_destroy();
        }
    }
}