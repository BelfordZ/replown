spawn = require("child_process").spawn

module.exports = (alias, args, opts) ->
  _args = if args? then args.split(" ") else undefined
  task = spawn(alias, _args)

  task.stdout.on("data", (data) ->
    if opts?.middleware?.stdout?()
    else console.log(data.toString())
  )

  return task
