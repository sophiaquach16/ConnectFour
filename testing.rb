require_relative 'Board'
board = Board.new(5,5)

def testDiagonalWinner()
  board1 = Board.new(5,5)
  board1.add("T",0)
  board1.add("P",1)
  board1.add("T",1)
  board1.add("P",2)
  board1.add("P",2)
  board1.add("T",2)
  board1.add("P",3)
  board1.add("P",3)
  board1.add("P",3)
  board1.add("T",3)

  isOrIsNot = board1.getWinner("T")

  if (isOrIsNot != "T")
    puts "Could not find a winner.\n"
  elsif
    puts "Found diagonal winner.\n"
  end

end

testDiagonalWinner()

def testHorizontalWinner()
  board1 = Board.new(5,5)
  board1.add("T",0)
  board1.add("T",1)
  board1.add("P",1)
  board1.add("T",2)
  board1.add("P",2)
  board1.add("P",2)
  board1.add("T",3)
  board1.add("T",3)
  board1.add("P",3)
  board1.add("P",3)

  isOrIsNot = board1.getWinner("T")

  if (isOrIsNot != "T")
    puts "Could not find a winner.\n"
  elsif
    puts "Found horizontal winner.\n"
  end

end

testHorizontalWinner()

def testVerticalWinner()
  board1 = Board.new(5,5)
  board1.add("T",0)
  board1.add("T",1)
  board1.add("P",1)
  board1.add("P",2)
  board1.add("P",2)
  board1.add("P",2)
  board1.add("T",3)
  board1.add("T",3)
  board1.add("T",3)
  board1.add("T",3)

  isOrIsNot = board1.getWinner("T")

  if (isOrIsNot != "T")
    puts "Could not find a winner.\n"
  elsif
    puts "Found vertical winner.\n"
  end

end

testVerticalWinner()

=begin

board.add("B",1)
board.add("B",1)
board.add("A",1)
board.add("B",1)
board.add("A",2)
board.add("B",2)
board.add("A",2)
board.add("A",3)
board.add("A",3)
board.add("A",4)
board.add("B",2)
board.add("B",3)
board.add("B",3)
board.add("B",4)
board.add("B",4)
board.add("B",4)

board.print
#board.getLeftDiagonalWinner("A")
#board.getLeftDiagonalWinner("B")
#board.getRightDiagonalWinner("B")
#board.getRightDiagonalWinner("B")

board.getWinner("B")

=end
