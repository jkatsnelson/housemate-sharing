# App.IndexRoute = Ember.Route.extend({
#   model: function() {
#     return EmberFire.Array.create({
#       ref: new Firebase("https://<my-firebase>.firebaseio.com/list")
#     });
#   }
# });
module.exports = App.ReceiptsRoute = Ember.Route.extend
  model: ->
    EmberFire.Array.create
      ref: new Firebase('https://housemate-sharing.firebaseio.com/receipts')