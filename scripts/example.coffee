# Description:
#   Example scripts for you to examine and try out.
#   Anything in this folder will be added to hubot when you run it.
#
#   This will make it easy to get up and running with fubot
#


module.exports = (robot) ->


  pasta = "I'd just like to interject for a moment. What you're refering to as Linux, is in fact, GNU/Linux, or as I've recently taken to calling it, GNU plus Linux. Linux is not an operating system unto itself, but rather another free component of a fully functioning GNU system made useful by the GNU corelibs, shell utilities and vital system components comprising a full OS as defined by POSIX."

  robot.hear /(L|l)inux/i, (res) ->
    res.send pasta

