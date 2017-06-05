board = Array.new(6) # there are 6 rows

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

for i in 0..5
  board[i] = Array.new(7) # for each row there are 7 slots vertically
end

for i in 0..5
  for j in 0..6
    board[i][j] = "X"
  end
end

puts "Welcome to a the new game. Here's the board:"
for i in 0..5
  for j in 0..6
    print board[i][j]
    print " "
  end
  puts
end

add(board, "B", 1)
puts

for i in 0..5
  for j in 0..6
    print board[i][j]
    print " "
  end
  puts
end
