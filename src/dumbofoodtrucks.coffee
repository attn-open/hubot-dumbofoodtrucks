# Description:
#   A command that shows us a photo of the Dumbo Food Truck lot
#
# Commands:
#   hubot (nom|dumbo|truck) cam - Returns an image of the Dumbo Food Truck Lot
#
# Author:
#   desmondmorris, smithln, quincyreid

module.exports = (robot) ->
  robot.respond /(nom|dumbo|truck) cam/i, (msg) ->
    msg.send 'https://nexusapi.dropcam.com/get_image?uuid=5a6a099c3d894d0284560626c7944d50&' + new Date().getTime() + '.jpg'
