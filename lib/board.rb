# lib/board.rb
class Board
    attr_reader :grid

    def initialize
        @grid = Array.new(3) { Array.new(3, ' ')} # Creates a 3x3 grid filled with spaces
    end

    def display
        puts "Current Board:"
        @grid.each_with_index do |row, index|
            puts row.join("   |  ")
            puts "----+------+----" unless index  == 2
        end
    end

    def place_symbol(row, col, symbol)
        if valid_move?(row, col)
            @grid[row][col] = symbol
            true
        else
            false
        end
    end

    def valid_move?(row, col)
        row.between?(0, 2) && col.between?(0, 2) && @grid[row][col] == " "
    end

    def full?
        @grid.flatten.none? { |cell| cell == " " }
    end



end
