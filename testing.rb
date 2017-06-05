require_relative 'Board'
board = Board.new(5,5)
board.print
board.add("B",1)
board.print
board.add("B",1)
board.add("B",1)
board.add("B",1)
board.print
board.getVerticalWinner("B")
