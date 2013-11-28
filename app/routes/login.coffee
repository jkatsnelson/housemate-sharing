module.exports = App.LoginRoute = Ember.Route.extend
  actions:
    login: ->
      loginController = @controllerFor 'login'
      username = loginController.get 'username'
      password = loginController.get 'password'
       # this would normally be done asynchronously
      if username is 'tomdale' and password is 'zomg'
        localStorage.authToken = "auth-token-here"

        applicationController = @controllerFor('application')
        transition = applicationController.get('savedTransition')

         # set isLoggedIn so the UI shows the logout button
        applicationController.login();

         # if the user was going somewhere, send them along, otherwise
         # default to `/posts`
        if transition then transition.retry()
        else @transitionTo('posts')