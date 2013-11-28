module.exports = App.ApplicationRoute = Ember.Route.extend
  actions:
    logout: ->
      @controllerFor('application').logUserOut()
      delete localStorage.authToken
      @transitionTo 'login'