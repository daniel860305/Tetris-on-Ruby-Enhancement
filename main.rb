# Main program for starting the game.

require_relative './tetris-original'
require_relative './tetris-enhanced'

def runTetris
  Tetris.new 
  mainLoop
end

def runMyTetris
  MyTetris.new
  mainLoop
end

if ARGV.count == 0
  runMyTetris
elsif ARGV.count != 1
  puts "usage: main.rb [enhanced | original]"
elsif ARGV[0] == "enhanced"
  runMyTetris
elsif ARGV[0] == "original"
  runTetris
else
  puts "usage: main.rb [enhanced | original]"
end

