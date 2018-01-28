def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
  if (index.between?(0, 8) && position_taken?(board, index) == false)
    true 
  else
    false 
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
    elsif (board[index] == "X" || board[index] == "O")
    true 
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  input_to_index(user_input)
  index = user_input.to_i - 1
  if valid_move?(board, index) == true
    move(board, index, token = "X")
  elsif valid_move?(board, index) == false
    puts "Please enter another number 1-9:"
end
end
