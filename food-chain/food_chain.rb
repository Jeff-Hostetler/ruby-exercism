class FoodChainSong

  def verse(x)

    if x==1
      song_output="I know an old lady who swallowed a fly.\n"
    end
    if x==2
      song_output="I know an old lady who swallowed a spider.\nIt wriggled and jiggled and tickled inside her.\n"
    end
    if x==3
      song_output= "I know an old lady who swallowed a bird.\nHow absurd to swallow a bird!\n"
    end

    until x==0
      if x==1
        song_output += "I don't know why she swallowed the fly. Perhaps she'll die.\n"
      end
      if x==2
        song_output += "She swallowed the spider to catch the fly.\n"
      end
      if x==3
        song_output += "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n"
      end
      x = x-1
    end

    song_output

  end

end
