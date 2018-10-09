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
    if play_command > songs.length
      puts ''
    puts songs[play_command.to_i - 1]
  else
    # not a number, check for song title match
    puts songs.find { |song| song == play_command }
  end
    
end
  