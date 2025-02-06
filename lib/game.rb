# frozen_string_literal: true

# lib/game.rb

require_relative "player"
require_relative "board"

# Game class manages the entire Tic Tac Toe gameplay,
# including players, turn management, and game flow.
class Game
  attr_reader :board, :players, :current_player

  def initialize
    @board = Board.new
    @players = []
    setup_players
    @current_player = @players[0]
  end

  def setup_players
    puts "Welcome to Tic Tac Toe!"
    print "Enter Player 1's name: "
    name1 = gets.chomp
    player1 = Player.new(name1, "X")

    print "Enter Player 2's name: "
    name2 = gets.chomp
    player2 = Player.new(name2, "O")

    @players = [player1, player2]
  end

  def play
    loop do
      board.display
      player_move

      if winner?
        board.display
        puts "#{current_player.name} wins!"
        break
      elsif board.full?
        board.display
        puts "It's a draw!"
        break
      end

      switch_turn
    end
  end

  def player_move
    loop do
      print "#{current_player.name} (#{current_player.symbol}), enter your move (row and column: 0 1 2): "
      row, col = gets.chomp.split.map(&:to_i)

      break if board.place_symbol(row, col, current_player.symbol)


      puts "Invalid move! Try again."
    end
  end

  def winner?
    winning_lines.any? { |line| line.all? { |cell| cell == current_player.symbol } }
  end

  private

  def winning_lines
    rows + columns + diagonals
  end

  def rows
    board.grid
  end

  def columns
    board.grid.transpose
  end

  def diagonals
    [
      [board.grid[0][0], board.grid[1][1], board.grid[2][2]],
      [board.grid[0][2], board.grid[1][1], board.grid[2][0]]
    ]
  end

  def switch_turn
    @current_player = @current_player == @players[0] ? @players[1] : @players[0]
  end
end
