module Chess
  class Player
    def initialize

    end
  end

  GAME_PIECES = %w[
    king
    queen
    rorok
    rook
    knight
    knight
    bishop
    bishop
    pawn
    pawn
    pawn
    pawn
    pawn
    pawn
    pawn
    pawn
  ]

  class GamePiece
    def initialize(type)
      @type = type
    end
  end

  class Board
    def initialize
      @player_one_pieces = []
      @player_two_pieces = []
      GAME_PIECES.each do |piece|
        @player_one_pieces << GamePiece.new(piece)
        @player_one_pieces << GamePiece.new(piece)
      end
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
