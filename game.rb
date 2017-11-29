require 'game_pieces'
require 'game_board_squares'

module Chess
  class Player
    def initialize(player_name)
      @player_name = player_name
      @player_pieces = create_pieces
    end

    def create_pieces
      pieces = []
      GAME_PIECES.each do |piece|
        pieces << GamePiece.new(piece)
      end
      pieces
    end
  end

  class GamePiece
    def initialize(type)
      @type = type
      @move_abilities = assign_move_abilities
    end

    def assign_move_abilities
      {
        max_spaces_can_move: '',
        can_leap: '',
        forward: '',
        backwards: '',
        left: '',
        right: '',
        diaganol_left_forward: '',
        diaganol_left_backward: '',
        diaganol_right_forward: '',
        diaganol_right_backward: '',
      }
    end
  end

  class Board
    def initialize(player_one_pieces, player_two_pieces)
      @board_squares = GAME_BOARD_SQUARES
      place_game_pieces(player_one_pieces, player_two_pieces)
    end

    def place_game_pieces
    end
  end

  class Game
    def intialize(player_one_name, player_two_name)
      @player_one = Player.new(player_one_name)
      @player_two = Player.new(player_two_name)
      @board = Board.new(@player_one.player_pieces, @player_two.player_pieces)
    end
  end
end
