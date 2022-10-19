class Bowling

    def initialize
        @rolls = []
    end
    def roll pins
        @rolls << pins
    end

    def score
        # @rolls.reduce(:+)  /reduce method does same thing as below

        result = 0
        rollIndex = 0
        20.times do 
            result += @rolls[rollIndex]
            rollIndex += 1
        end
        result
    end
end



describe "bowling_game" do

    before do
        @game = Bowling.new
    end

    it 'can roll gutter game' do
        20.times{@game.roll(0)}
        expect(@game.score).to eq(0)
    end

    it 'can roll all ones' do
        20.times{@game.roll(1)}
        expect(@game.score).to eq(20)
    end


end