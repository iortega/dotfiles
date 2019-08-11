IortegaSnippetsView = require './iortega-snippets-view'
{CompositeDisposable} = require 'atom'

module.exports = IortegaSnippets =
  iortegaSnippetsView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @iortegaSnippetsView = new IortegaSnippetsView(state.iortegaSnippetsViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @iortegaSnippetsView.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'iortega-snippets:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @iortegaSnippetsView.destroy()

  serialize: ->
    iortegaSnippetsViewState: @iortegaSnippetsView.serialize()

  toggle: ->
    console.log 'IortegaSnippets was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
