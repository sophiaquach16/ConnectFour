class Board

  # methods below --------------------------------------------------------------

  def initialize(noRows, noColumns)
    @noRows = noRows
    @noColumns = noColumns
    
    for i in 0..(noRows-1)
      board[i] = Array.new(noColumns) # for each row there are 7 slots vertically
    end
    for i in 0..(noRows-1)
      for j in 0..(noColumns-1)
        board[i][j] = "X"
      end
    end
  end

  def add(board, colour, column)
    for i in 0..(noRows-1)
      w = (i - (noRows-1)) * (-1)
      if (board[w][column] == "X") then
        board[w][column] = colour
        break
      else
        print "Column is full."
      end
    end
  end

  def print(board)
    for i in 0..(noRows-1)
      for j in 0..(noColumns-1)
        print board[i][j]
        print " "
      end
      puts
    end
  end

  def getWinner(board)

end
