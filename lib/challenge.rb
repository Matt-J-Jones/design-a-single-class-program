# File: lib/challenge.rb

class TrackLister 
  def initialize 
    @songlist = Array.new
  end

  def addsong(title, artist)
    # creates raw list, of items as they are added
    @songlist << [artist, title]
  end

  def printlist
    # pushes raw list to temp array and returns formatted
    temp_arr = Array.new
    @songlist.each { |entry| 
      temp_arr << "#{entry[0]}: #{entry[1]}"
    }
    puts temp_arr.join("\n")
    return temp_arr.join("\n")
  end

  def printlist_sorted
    # pushes raw list to temp hash, sorted by artist name,
    # and returns grouped by artist
    temp_hash = Hash.new
    temp_arr = Array.new
    @songlist.each { |entry| 
      temp_hash[entry[0]] = []
    }
    @songlist.each { |entry|
      temp_hash[entry[0]] << entry[1]
    }
    
    temp_hash.each { |key, value| 
      value.each { |song|
        temp_arr << "#{key}: #{song}"
      }
    }
    puts temp_arr.join("\n")
    return temp_arr.join("\n")
  end
end