request = require 'request'
cheerio = require 'cheerio'
 
module.exports = (robot) ->
  robot.respond /scraping (.*)/i, (msg) ->
    url = msg.match[1]
    options =
      url: url
      timeout: 2000
      headers: {'user-agent': 'node title fetcher'}
 
    request options, (error, response, body) ->
      $ = cheerio.load body
      title = $('title').text().replace(/\n/g, '')
      msg.send(title)
