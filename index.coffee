module.exports =
	subs: null
	activate: ->
		# {name} = require './package.json' if @debug
		{exec} = require 'child_process' #,execSync}
#-------------------------------------------------------------------------------

		#console.log "#{name} package activated." if @debug

		@subs = atom.workspace.observeTextEditors (editor) ->
			scpt = editor.getPath()
			{scopeName} = editor.getGrammar()

			if scopeName.endsWith('jxa') and scpt?.endsWith '.scpt'

				#require 'fs-cson/register'
				# {firstLineMatch} = require './grammars/jxa.cson' #fs.readdir
				{createReadStream} = require 'fs'
				{createInterface} = require 'readline'

				# Determine if .scpt is compiled from the first line
				#compiled = new RegExp firstLineMatch.substr 0, firstLineMatch.indexOf '|'
				readline = createInterface input: createReadStream scpt
				readline.on 'line', (line) -> if /^JsOsa/.test line #compiled.test line

					# Decompile .scpt
					stdout = exec "osadecompile '#{scpt}'" #execSync
					stdout.stdout.on 'data', (data) -> editor.setText data #stdout.toString()
					#console.log "#{name}: Decompiled #{scpt}." if @debug

					# Recompile on save/close
					editor.onDidDestroy -> #onDidSave
						exec "osacompile -l JavaScript -o '#{scpt}'{,}"
						#console.log "#{name}: Recompiled #{scpt}." if @debug

#-------------------------------------------------------------------------------
	deactivate: -> @subs.dispose()
