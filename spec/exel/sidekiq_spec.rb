module EXEL
  describe Sidekiq do
    it 'sets itself as the async provider' do
      expect(EXEL.async_provider).to eq(EXEL::Sidekiq::SidekiqProvider)
    end
  end
end
