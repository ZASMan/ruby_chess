require_relative '../game.rb'

describe 'Player' do
  let(:player) { Chess::Player.new('andy') }
  it 'can initialize a player with a name' do
  	player
  	expect(player.player_name).to eq 'andy'
  end

  it 'initializes a player with game pieces' do
  	player
  	first_piece = player.player_pieces.first
  	expect(first_piece.type).to eq 'king'
  end
end

describe 'GamePiece' do
  let(:king_piece) { Chess::GamePiece.new('king') }

  it 'creates a king piece with appropriate abilities' do
  	king_piece
  	expect(king_piece.moves.abilities[:max_spaces_can_move]).to eq 1
  	expect(king_piece.moves.abilities[:can_leap]).to eq false
  end
end

describe 'Board' do
  let(:player_one) { Chess::Player.new('andy') }
  let(:player_two) { Chess::Player.new('sid') }
  let(:game_board) do
    Chess::Board.new(
  	  player_one.player_pieces,
  	  player_two.player_pieces
  	)
  end

  it 'creates an 8x8 square board' do
  	player_one
  	player_two
  	game_board
  	# Height
  	expect(game_board.board_squares.length).to eq 8
  	# Width
  	expect(game_board[1].length).to eq 8
  end
end
