require_relative '../config/environment.rb'

File.open('words').each do |line|
	p line
	Word.create(word: line.chomp)
end