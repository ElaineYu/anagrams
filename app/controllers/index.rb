get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/result' do
	@string = params[:word]
	@anagrams = Word.anagrams(@string)
    erb :results
end


# Directions

#Create and migrate
#  rake db:create
#  rake generate:migration NAME=create_words
#  rake generate:model NAME=Word
#  rake db:migrate

# SEED DATABASE 
		# require_relative '../config/environment.rb'

		# File.open('words').each do |line|
		# 	p line
		# 	Word.create(word: line.chomp)
		# end

#  rake db:seed

# Copy 
#$ cat /usr/share/dict/words # outputs the contents of the file to STDOUT
#$ wc -w /usr/share/dict/words # counts the number of words in the file
#  sudo cp /usr/share/dict/words ~/better_anagrams
