chatRef = new Firebase 'https://housemate-sharing.firebaseIO.com'

module.exports = App.LoginRoute = Ember.Route.extend
  actions:
    login: ->
      applicationController = @controllerFor('application')
      transition = applicationController.get('savedTransition')
      auth = new FirebaseSimpleLogin chatRef, (error, user) =>
      # set isLoggedIn so the UI shows the logout button
        if user
          store = EmberFire.Object.create
            ref: new Firebase("https://housemate-sharing.firebaseio.com/user/#{user.id}")
          store.setProperties
            firstName: user.first_name
            lastName: user.last_name
            id: user.id
          localStorage.authToken = user.id
          applicationController.login();
      # if the user was going somewhere, send them along, otherwise
      # default to `/receipts`
          if transition then transition.retry()
          else @transitionTo('receipts')
        else console.log 'error'