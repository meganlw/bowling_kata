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
        10.times do 
            if spare? rollIndex
               result += spareScore rollIndex
            else 
                result += frameScore rollIndex
            end
            rollIndex += 2
        end
        result
    end

    def spare? rollIndex
        @rolls[rollIndex] + @rolls[rollIndex + 1] == 10
    end

    def spareScore rollIndex
        @rolls[rollIndex] + @rolls[rollIndex + 1] + @rolls[rollIndex + 2]
    end

    def frameScore rollIndex
        @rolls[rollIndex] + @rolls[rollIndex + 1]
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

    it 'can roll a spare' do
        @game.roll(5)
        @game.roll(5)
        @game.roll(3)
        17.times{@game.roll(0)}
        expect(@game.score).to eq(16)
    end

end