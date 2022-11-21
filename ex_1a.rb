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
<<<<<<< HEAD
words = [1,2,3]
words.each do|word|
    puts word
end



=======
>>>>>>> 5f07cc9e41d0f010fa20aaa09bcafc36a1a4e8ef
