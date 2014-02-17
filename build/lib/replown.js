(function() {
  var spawn;

  spawn = require("child_process").spawn;

  module.exports = function(alias, args, opts) {
    var task, _args;
    _args = args != null ? args.split(" ") : void 0;
    task = spawn(alias, _args);
    task.stdout.on("data", function(data) {
      var _ref;
      if (opts != null ? (_ref = opts.middleware) != null ? typeof _ref.stdout === "function" ? _ref.stdout() : void 0 : void 0 : void 0) {

      } else {
        return console.log(data.toString());
      }
    });
    return task;
  };

}).call(this);
