require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts /- help : displays this help message/
  puts /- list : displays a list of songs you can play/
  puts /- play : lets you choose a song to play/
  puts /- exit : exits this program/
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
  songs
end

# def play(songs)
#   puts "Please enter a song name or number:"
#   choice = gets.strip
#     if songs.include?(choice)
#       puts "Playing #{choice}"
#   elsif Integer(choice)
#     choice = choice.to_i
#       if choice.between?(1, 9)
#         puts songs[choice-1]
#       else
#         puts "Invalid input, please try again."
#         end
#   elsif songs.exclude? choice
#       puts "Invalid input, please try again."
#   end
# end

def play(songs)
  chosen_song = ""
	puts "Please enter a song name or number:"
	input = gets.chomp
	songs.each_with_index do |song, index|
		if input == song || input == (index+1).to_s
      chosen_song = song
		end
	end
	if chosen_song == ""
		puts "Invalid input, please try again"
	else
		puts "Playing #{chosen_song}"
	end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = nil
  while user_input != 'exit'
    user_input = gets.strip
    if user_input == 'list'
      list(songs)
    elsif user_input == 'play'
      play(songs)
    elsif user_input == 'help'
      help
    elsif user_input == 'exit'
      exit_jukebox
    end
  end
end