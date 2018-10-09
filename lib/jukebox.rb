songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts /^(?=.*help) (?=.*list) (?=.*play) (?=.*exit) .+/m
end

def play(songs)
  play_command = gets.chomp
  if play_command =~ /\A\d+\Z/
    # user entered a number
    play_command = play_command.to_i
    if play_command.between?(1, songs.length) # check that number is valid
      puts songs[play_command.to_i - 1]
    else
      puts 'Invalid input, please try again'
    end
  else
    # not a number, check for song title match
    if songs.find { |song| song == play_command }
      puts play_command
    else
      puts 'invalid entry'
    end
  end
    
end
  