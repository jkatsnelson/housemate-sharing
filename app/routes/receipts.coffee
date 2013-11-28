module.exports = App.ReceiptsRoute = Ember.Route.extend
  model: ->
    EmberFire.Array.create
      ref: new Firebase('https://housemate-sharing.firebaseio.com/receipts')