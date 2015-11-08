{exec} = require 'child_process'
{BufferedProcess} = require 'atom'

module.exports =
	activate: ->
		atom.workspace.observeTextEditors (editor) ->

			scpt = editor.getPath()

			command = 'osadecompile'
			args = [scpt]

			# Display raw JXA code
			stdout = (raw) -> editor.setText raw

			if /\.scptd?$/.test scpt
				# Decompile .scpt
				new BufferedProcess {command,args,stdout}

				# Recompile on save
				editor.onDidDestroy -> #onDidSave
					exec "osacompile -l JavaScript -o #{scpt}{,}"
