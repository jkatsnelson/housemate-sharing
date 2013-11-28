module.exports = App.ApplicationRoute = Ember.Route.extend
  actions:
    logout: ->
      @controllerFor('application').logout()
      delete localStorage.authToken
      @transitionTo 'login'