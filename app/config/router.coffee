module.exports = App.Router.map ->
  @resource 'auth', {path: '/'}, ->
    @resource 'receipts'
    @resource 'group'
  @resource 'login'
  # put your routes here
