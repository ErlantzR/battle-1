require 'player'

describe Player do

  it 'returns name' do

    player = Player.new('Erlantz')
    expect(player.name).to eq 'Erlantz'

  end

end