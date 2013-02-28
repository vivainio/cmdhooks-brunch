fs = require "fs"
sysPath = require "path"
child_process = require "child_process"

module.exports = class CmdHooks
  brunchPlugin: yes
  #type: 'stylesheet'
  #extension: 'css'

  constructor: (@config) ->
    null

  onCompile: (changedFiles) ->
  	#console.log "Changed files", changedFiles
  	oncompile = process.cwd() + "/hook_compile"
  	#console.log "Cwd is", process.cwd()
  	if fs.existsSync oncompile
  		console.log "Execing", oncompile
  		child_process.exec oncompile, (err, sout, serr) ->
  			if err
  				console.log "ERROR",err
  			if sout.length > 0
  				console.log "Out:" + sout

  	else
  		console.log "No hook", oncompile