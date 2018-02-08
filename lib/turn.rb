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
  