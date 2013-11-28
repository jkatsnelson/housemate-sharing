module.exports = App.ApplicationController = Ember.ObjectController.extend
  # used to show, or not show, the log out button
  isLoggedIn: false

  # when a user enters the app unauthenticated, the transition
  # to where they are going is saved off so it can be retried
  # when they have logged in.
  savedTransition: null

  login: ->
    @setProperties
      savedTransition: null
      isLoggedIn: true


  logout: ->  @set 'isLoggedIn', false
