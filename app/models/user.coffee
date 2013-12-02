module.exports = App.User = DS.Model.extend
  facebookID: DS.attr('string', async: true)