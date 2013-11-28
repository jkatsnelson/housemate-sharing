module.exports = App.ReceiptsController = Ember.ArrayController.extend
  actions:
    addItem: -> @pushObject @get "item"