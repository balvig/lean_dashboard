jQuery ->
  $('table.metrics .metric').popover(trigger: 'hover', html: true, placement: 'bottom')

  if $('#editor').length
    editor = ace.edit('editor')
    editor.setTheme('ace/theme/monokai')
    editor.getSession().setMode('ace/mode/ruby')

    $('form.edit_metric').submit -> $('#metric_code').val(editor.getValue())
