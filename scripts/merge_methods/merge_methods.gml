function merge_methods() {
    var _methods = [];
    for (var i = 0; i < argument_count; i++) {
        var _m = argument[i];
        if (is_method(_m)) array_push(_methods, _m);
    }
    
    return {
		methods: _methods, 
		
        execute: function() {
            for (var i = 0; i < array_length(self.methods); i++) {
                self.methods[i]();
            }
        },
        add: function(_m) {
            if (is_method(_m)) array_push(self.methods, _m);
        }
    };
}