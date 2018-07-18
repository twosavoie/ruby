class Footballplayer

  def set_name=(name)
    @name = name
  end

  def get_name
    return @name
  end

  def set_yards=(yards)
    @yards = yards
  end

  def get_yards
    return @yards
  end

  def set_touchdowns=(touchdowns)
    @touchdowns = touchdowns
  end

  def get_touchdowns
    return @touchdowns
  end

end

class Qb < Footballplayer

  def set_interceptions=(interceptions)
    @interceptions = interceptions
  end

  def quarterback
    return "Quarterback"
  end

end

class Wrrbte < Footballplayer

  def set_fumbles=(fumbles)
    @fumbles = fumbles
  end

  def widereceiver
    return "Wide Receiver"
  end

  def runningback
    return "Running Back"
  end

  def tightend
    return "Tight End"
  end

end

class Kicker < Footballplayer

  def set_misses=(misses)
    @misses = misses
  end

  def kicker
    return "Kicker"
  end

end

class Defense < Footballplayer

  def set_sacks=(sacks)
    @sacks = sacks
  end

  def defense
    return "Defense"
  end

end


quarterback = Qb.new
quarterback.set_name= "Aaron Rodgers"
quarterbackname = quarterback.get_name

skillsplayer = Wrrbte.new
skillsplayer.set_name= "Odell Beckham Jr."
skillsplayername = skillsplayer.get_name

kicker = Kicker.new
kicker.set_name= "Adam Vinatieri"
kickername = kicker.get_name

defense = Defense.new
defense.set_name= "Broncos"
defensename = defense.get_name

puts "My Fantasy Football Team is #{quarterback.quarterback}: #{quarterbackname}, #{skillsplayer.widereceiver}: #{skillsplayername}, #{kicker.kicker}: #{kickername}, #{defense.defense}: #{defensename}."

puts quarterback.inspect
puts skillsplayer.inspect
puts kicker.inspect
puts defense.inspect
