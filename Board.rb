# creation of a new board ------------------------------------------------------

for i in 0..5
  board[i] = Array.new(7) # for each row there are 7 slots vertically
end

for i in 0..5
  for j in 0..6
    board[i][j] = "X"
  end
end

# methods below ----------------------------------------------------------------


def add(board, colour, column)
  for i in 0..5
    w = (i - 5) * (-1)
    if (board[w][column] == "X") then
      board[w][column] = colour
      break
    else
      print "Column is full."
    end
  end
end

def print(board)
  for i in 0..5
    for j in 0..6
      print board[i][j]
      print " "
    end
    puts
  end
end

def getWinner(board)
