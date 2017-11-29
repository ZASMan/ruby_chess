require_relative '../game.rb'

describe 'Player' do
  it 'can initialize a player with a name' do
  	player = Chess::Player.new('andy')
  	expect(player.player_name).to eq 'andy'
  end
end