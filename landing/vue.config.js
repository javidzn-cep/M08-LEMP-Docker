const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  publicPath: '/landing/',
  devServer: {
    allowedHosts: ['all'],
  }
})