class Board

  # methods below --------------------------------------------------------------

  def initialize(noRows, noColumns)
    @noRows = noRows
    @noColumns = noColumns
    @board = Array.new(@noRows)

    for i in 0..(@noRows-1)
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

  def getHorizontalWinner(player)
    for i in 0..(@noRows-1)
      for j in 0..(@noColumns-4)
        if (@board[i][j] == player &&
            @board[i][j+1] == player &&
            @board[i][j+2] == player &&
            @board[i][j+3] == player)
            return player
        end
      end
    end
  end

  def getVerticalWinner(player)
    for i in 0..(@noColumns-1)
      for j in 0..(@noRows-4)
        if (@board[j][i] == player &&
            @board[j+1][i] == player &&
            @board[j+2][i] == player &&
            @board[j+3][i] == player)
            return player
        end
      end
    end
  end

  def getRightDiagonalWinner(player)
    @winner = "false"
    for j in 0..(@noRows-4)
      if (@winner == "true")
        return player
      end
        for i in 0..(@noColumns-4)
          if (@board[j][i] == player &&
              @board[j+1][i+1] == player &&
              @board[j+2][i+2] == player &&
              @board[j+3][i+3] == player)
              @winner = "true"
              return player
          end
        end
    end
  end

  def getLeftDiagonalWinner(player)
    @winner = "false"
    for j in 0..(@noRows-4)
      if (@winner == "true")
        return player
      end
        for i in 0..(@noColumns-4)
          w = (i - (@noColumns-1)) * (-1)
          if (@board[j][w] == player &&
              @board[j+1][w-1] == player &&
              @board[j+2][w-2] == player &&
              @board[j+3][w-3] == player)
              @winner = "true"
              return player
          end
        end
    end
  end

  def getWinner(player)

    horizontalWin = getHorizontalWinner(player)
    if (horizontalWin == player)
      return player
    end

    verticalWin = getVerticalWinner(player)
    if (verticalWin == player)
      return player
    end

    diagonalRightWin = getRightDiagonalWinner(player)
    if (diagonalRightWin == player)
      return player
    end

    diagonalLeftWin = getLeftDiagonalWinner(player)
    if (diagonalLeftWin == player)
      return player
    end

  end

end
