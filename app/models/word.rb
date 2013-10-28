class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.is_anagram?(string1, string2)
  	string1.downcase.split(//).sort == string2.downcase.split(//).sort
  end

   def self.anagrams(string)
    anagram_list = []
    self.all.each do |word_being_compared|
      if self.is_anagram?(word_being_compared.word, string)
        anagram_list << word_being_compared
      end
    end
    return anagram_list
  end
end
