class Poker
  def initialize(players)
    @players = players
    @hands = []
    @players.each { |player| @hands.append(nil) }
  end
  
  def play_poker()
    puts "Players in the poker game:"
    @players.each { |player| puts "#{player.name}: #{player.get_player_hand}" }
    # [pretend there's code here]
    
  end

  def get_results()
    return "[pretend these are poker results]"
  end

  def get_player_hand(i)
    return @hands[i]
  end
end

class Chess
  def initialize(players)
    @players = []
    players.each { |player| @players.append(Player_with_color.new(player)) }
  end

  def play_game()
    puts "Players in the chess game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end

end

class Player_with_color
  attr_reader :name, :color

  def initialize(player)
    @name = player[0]
    @color = player[1]
  end
end

class Go
  def initialize(players)
    @players = []
    players.each { |player| @players.append(Player_with_color.new(player)) }
  end

  def play()
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_score()
    return "[pretend these are go results]"
  end
end

class PlayGames

  def initialize(game_number, players)
    @players = players
    @game_number = game_number
  end

  def choose_game()
    case @game_number
    when 1
      poker = Poker.new(@players)
      poker.play_poker()
      puts poker.get_results()
    when 2
      chess = Chess.new(@players)
      chess.play_game()
      puts chess.get_results()
    when 3
      go = Go.new(@players)
      go.play()
      puts go.get_score()
    end
  end
end


pg = PlayGames.new(1, ["alice", "bob", "chris", "dave"])
pg.choose_game()

puts

pg = PlayGames.new(2, [["alice", "white"], ["bob", "black"]])
pg.choose_game()

puts

pg = PlayGames.new(3, [["alice", "white"], ["bob", "black"]])
pg.choose_game()

