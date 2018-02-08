# returns whether a valid move
def valid_move?(board, index)
  if (0..8) === index
    if !position_taken?(board, index)
      return true
    end
  end
  return false
end

#returns whether position on board is taken
def position_taken?(board, index)
  space = board[index]
  if space == 'X' || space == "O"
    return true
  else
    return false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

# displays the board
def display_board(board)
  [0,3,6].each do |i|
    puts " #{board[i]} | #{board[i + 1]} | #{board[i + 2]} "
    if i != 6
      puts '-----------'
    end
  end
end

def turn(board)
  while true
    puts "Please enter 1-9:"
    input = gets().strip()
    index = input_to_index(input)
  end
end

def input_to_index(input)
  return input.to_i() - 1
end
