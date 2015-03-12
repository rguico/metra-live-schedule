exports.action = {
  name:                   'randomNumber',
  description:            'randomNumber',
  blockedConnectionTypes: [],
  outputExample:          {},
  matchExtensionMimeType: false,
  version:                1.0,
  toDocument:             true,

  inputs: {},

  run: function(api, connection, next){
    // your logic here
    next(connection, true);
  }
};

exports.randomNumber = {
  name: 'randomNumber',
  description: 'I am an API method which will generate a random number',
  outputExample: {
    randomNumber: 0.123
  },

  run: function(api, connection, next){
    connection.response.randomNumber = Math.random();
    next(connection, true);
  }

};