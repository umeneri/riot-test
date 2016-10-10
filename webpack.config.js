module.exports = {
  context: __dirname + '/source',
  entry: {
    'application': './es2015/application',
  },
  output: {
    path: __dirname + '/distribution',
    filename: '[name].js'
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loaders: ["babel-loader"],
      },
      {
        test: /\.html$/,
        loader: "file?name=[name].[ext]"
      },
      {
        test: /\.css$/,
        loader: "file?name=[name].[ext]"
      }
    ]
  }
};

