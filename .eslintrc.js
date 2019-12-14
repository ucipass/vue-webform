module.exports = {
  "parser": "babel-eslint",
  rules: {
    'no-console': process.env.NODE_ENV === 'production' ? 'error' : 'off'
  }
}
