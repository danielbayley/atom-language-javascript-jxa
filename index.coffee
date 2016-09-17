{exec} = require 'child_process'

module.exports =
  subs: null
  activate: ->
#-------------------------------------------------------------------------------

    @subs = atom.workspace.observeTextEditors (editor) ->
      buffer = editor.buffer
      scpt = buffer.file?.path ? ''
      {scopeName} = editor.getGrammar()

      if scopeName.endsWith('jxa') and scpt.endsWith('.scpt') and
        buffer.getLines()[0].startsWith 'JsOsa'

          # Decompile .scpt
          {stdout} = exec "osadecompile '#{scpt}'"
          stdout.on 'data', (script) -> editor.setText script

          editor.onDidDestroy -> # Recompile
            exec "osacompile -l JavaScript -o '#{scpt}'{,}"

#-------------------------------------------------------------------------------
  deactivate: -> @subs.dispose()
