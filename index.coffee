{execSync,exec} = require 'child_process'

module.exports = activate: ->
	atom.workspace.observeTextEditors (editor) ->
		scpt = editor.getPath()

		if /\.scptd?$/.test scpt
			# Decompile .scpt
			buffer = execSync "osadecompile '#{scpt}'"
			editor.setText buffer.toString()

			# Recompile on save/close
			editor.onDidDestroy -> #onDidSave
				exec "osacompile -l JavaScript -o '#{scpt}'{,}"
