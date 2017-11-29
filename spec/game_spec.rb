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