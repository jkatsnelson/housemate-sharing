module.exports = App.AuthRoute = Ember.Route.extend
  beforeModel: (transition) ->
    applicationController = @controllerFor 'application'
# App.AuthenticatedRoute = Ember.Route.extend({
#   beforeModel: function(transition) {
#     var applicationController = this.controllerFor('application');

#     // or check a cookie, or other state
    if not localStorage.authToken
      applicationController.set 'savedTransition', transition
      @transitionTo 'login'
    else
      @controllerFor('application').login()