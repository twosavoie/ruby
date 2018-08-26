# In Ruby classes act as templates that "mint" new objects, similar to how coins were minted using a die (template).

class Song

  def initialize(lyrics) # do I need this every time I make a class?
    @lyrics = lyrics
  end

  def sing_me_a_song()  # method called in last lines
    @lyrics.each {|line| puts line} # how does it know "line"? is |line| naming the variable line? I think so.
  end
end

happy_bday = Song.new(["Happy birthday to you",
    "I don't want to get sued",
    "So I'll stop right there"])

bulls_on_parade = Song.new (["They rally around tha family",
    "With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()
