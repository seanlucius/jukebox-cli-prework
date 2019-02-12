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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can displays
  - play : lets you choose a song to play
  - exit : exits this program"
end 

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if user_response.to_i > 0 && user_response.to_i < songs.length
    puts "Playing #{songs[user_response.to_i - 1]}"
    elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run
  help
  puts "Please enter a command:"
  
end 