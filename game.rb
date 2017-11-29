require_relative 'game_pieces.rb'
require_relative 'game_board_squares.rb'

module Chess
  include GameBoardSquares
  include GamePieces

  class Player
    attr_accessor :player_name, :player_pieces

    def initialize(player_name)
      @player_name = player_name
      @player_pieces = create_pieces
    end

    def create_pieces
      pieces = []
      Chess::GAME_PIECES.each do |piece|
        pieces << GamePiece.new(piece)
      end
      pieces
    end
  end

  class GamePiece
    attr_accessor :type, :moves

    def initialize(type)
      @type = type
      @moves = GamePieceAbility.new(type)
    end
  end

  class GamePieceAbility
    attr_accessor :abilities

    def initialize(game_piece_type)
      @abilities = king_abilities if game_piece_type == 'king'
      @abilities = rook_abilities if game_piece_type == 'rook'
      @abilities = bishop_abilities if game_piece_type == 'bishop'
      @abilities = queen_abilities if game_piece_type == 'queen'
      @abilities = knight_abilities if game_piece_type == 'knight'
      @abilities = pawn_abilities if game_piece_type == 'pawn'
    end

    def king_abilities
      {
        max_spaces_can_move: 1,
        can_leap: false,
        forward: true,
        backwards: true,
        left: true,
        right: true,
        diaganol_left_forward: true,
        diaganol_left_backward: true,
        diaganol_right_forward: true,
        diaganol_right_backward: true,
      }
    end

    def rook_abilities

    end

    def bishop_abilities

    end

    def queen_abilities

    end

    def knight_abilities

    end

    def pawn_abilities

    end
  end

  class Board
    attr_accessor :board_squares

    def initialize(player_one_pieces, player_two_pieces)
      @board_squares = Chess::GAME_BOARD_SQUARES
      place_game_pieces(player_one_pieces, player_two_pieces)
    end

    def place_game_pieces(player_one_pieces, player_two_pieces)
    end
  end

  class Game
    def intialize(player_one_name, player_two_name)
      @game_player_one = Player.new(player_one_name)
      @game_player_two = Player.new(player_two_name)
      @game_board = Board.new(@player_one.player_pieces, @player_two.player_pieces)
    end
  end
end
