class Board

  # methods below --------------------------------------------------------------

  def initialize(noRows, noColumns)
    @noRows = noRows
    @noColumns = noColumns
    @board = Array.new(@noRows)

    for i in 0..(@noRows-1)
      # for each row there are 7 slots vertically
      @board[i] = Array.new(@noColumns)
    end
    for i in 0..(noRows-1)
      for j in 0..(noColumns-1)
        @board[i][j] = "X"
      end
    end
  end

  def add(colour, column)
    for i in 0..(@noRows-1)
      w = (i - (@noRows-1)) * (-1)
      if (@board[w][column] == "X") then
        @board[w][column] = colour
        break
      elsif (@board[w][column] != "X")
        next
      elsif (i == (@noRows-1))
        printf "Column is full."
      end
    end
  end

  def print()
    for i in 0..(@noRows-1)
      for j in 0..(@noColumns-1)
        printf @board[i][j]
        printf " "
      end
      printf "\n"
    end
    printf "\n"
  end

  def getWinner(board)
  end

end
