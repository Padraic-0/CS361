class Player
    def initialize(num)
        @name = "player " << num.to_s
        @score = rand(10..300)
    end
    def display()
        puts "Ready #@name! score:#@score"
    end
end

players = []
for n in 0..50 do
players << Player.new(n)
players[n].display()
end
