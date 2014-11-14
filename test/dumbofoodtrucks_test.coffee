chai = require "chai"
sinon = require "sinon"
chai.use require "sinon-chai"

expect = chai.expect

describe "Dumbo Food Trucks", ->
  dumbofoodtrucks_module = require("../src/dumbofoodtrucks")

  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @msg =
      send: sinon.spy()
      random: sinon.spy()
    @dumbofoodtrucks_module = dumbofoodtrucks_module(@robot)

  describe "Get Dumbo Food Truck Lot line photo", ->

    it "registers a response listener", ->
      expect(@robot.respond).to.have.been.calledWith(/(nom|dumbo|truck) cam/i)

    it "should send a image url", ->
      cb = @robot.respond.firstCall.args[1]
      cb(@msg)
      expect(@msg.send).to.have.been.calledWithMatch("https://nexusapi.dropcam.com/get_image?uuid=5a6a099c3d894d0284560626c7944d50")
