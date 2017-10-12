import configSource from '../../../src/app/config/config.default.coffee'
import axios from 'axios'

export default login = ->
  axios 
    method: 'post'  
    url: configSource.source.leanCloud.uri+'/login'
    dataType: 'json'
    headers: configSource.source.leanCloud.headers
    data: {
      username: '何文涛涛',
      password: '12345678'
    }
  .then (response) ->
    response.data if response.status is 200
  
  .catch (error) ->
    console.log error