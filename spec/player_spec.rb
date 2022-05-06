describe Player do

  subject(:erlantz) { Player.new('Erlantz') }
  subject(:laura) { Player.new('Laura') }

  describe '#name' do
    it 'returns name' do
      expect(erlantz.name).to eq 'Erlantz'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(erlantz.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  # describe '#attack' do
  #   it 'damages the player' do
  #     expect(laura).to receive(:receive_damage)
  #     erlantz.attack(laura)
  #   end
  # end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { erlantz.receive_damage }.to change { erlantz.hit_points }.by(-10)
    end
  end

end