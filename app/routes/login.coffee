chatRef = new Firebase 'https://housemate-sharing.firebaseIO.com'

module.exports = App.LoginRoute = Ember.Route.extend
  actions:
    login: ->
      applicationController = @controllerFor('application')
      transition = applicationController.get('savedTransition')
      auth = new FirebaseSimpleLogin chatRef, (error, user) =>
       # set isLoggedIn so the UI shows the logout button
        if user
          localStorage.authToken = user.firebaseAuthToken
          applicationController.login();
       # if the user was going somewhere, send them along, otherwise
       # default to `/receipts`
          if transition then transition.retry()
          else @transitionTo('receipts')
        else console.log 'error'

      auth.login('facebook')

