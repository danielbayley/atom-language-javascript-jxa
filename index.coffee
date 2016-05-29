{exec} = require 'child_process'

module.exports =
	subs: null
	activate: ->
#-------------------------------------------------------------------------------

		@subs = atom.workspace.observeTextEditors (editor) ->
			buffer = editor.buffer
			scpt = buffer.file?.path
			{scopeName} = editor.getGrammar()
			#require 'fs-cson/register'
			# {firstLineMatch} = require './grammars/jxa.cson'
			if scopeName.endsWith('jxa') and
				scpt?.endsWith '.scpt' and /^JsOsa/.test buffer.getLines()[0]

					# Decompile .scpt
					{stdout} = exec "osadecompile '#{scpt}'"
					stdout.on 'data', (script) -> editor.setText script

					# Recompile on save/close
					editor.onDidDestroy -> #onDidSave
						exec "osacompile -l JavaScript -o '#{scpt}'{,}"

#-------------------------------------------------------------------------------
	deactivate: -> @subs.dispose()
