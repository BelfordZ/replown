(function() {
  var grunt, spawn;

  grunt = void 0;

  spawn = void 0;

  spawn = require("child_process").spawn;

  module.exports = {
    grunt: function(args, opts) {
      var _args, _grunt, _opts;
      _args = void 0;
      _grunt = void 0;
      _opts = void 0;
      _args = (args != null ? args.split(" ") : void 0);
      _opts = (opts != null ? opts.split(" ") : void 0);
      _grunt = spawn("grunt", _args, _opts);
      return _grunt.stdout.on("data", function(data) {
        return console.log(data.toString());
      });
    }
  };

}).call(this);
