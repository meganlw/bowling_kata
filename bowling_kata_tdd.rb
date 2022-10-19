class Bowling

    def roll pins

    end

    def score
        0
    end
end



describe "bowling_game" do


    
    it 'can make a new game' do
        game = Bowling.new
    end

    it 'can roll gutter game' do
        game = Bowling.new
        20.times{game.roll(0)}
        expect(game.score).to eq(0)
    end


end