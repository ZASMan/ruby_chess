require 'game_pieces'
require 'game_board_squares'

module Chess
  class Player
    def initialize

    end
  end

  class GamePiece
    def initialize(type)
      @type = type
    end
  end

  class Board
    def initialize
      @board_squares = GAME_BOARD_SQUARES
      @player_one_pieces = []
      @player_two_pieces = []
      GAME_PIECES.each do |piece|
        @player_one_pieces << GamePiece.new(piece)
        @player_one_pieces << GamePiece.new(piece)
      end
      place_game_pieces
    end

    def place_game_pieces
      @player_one_pieces
    end
  end

  class Game
    def intialize(player_one, player_two)
      @board = Board.new
      @player_one = player_one
      @player_two = player_two
    end
  end
end
