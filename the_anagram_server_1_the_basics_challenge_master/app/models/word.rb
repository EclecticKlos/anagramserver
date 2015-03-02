class Word < ActiveRecord::Base

  def anagrams
    p "*" * 70
    anagram_list = []

    Word.all.each do |this_word|
      anagram_word = self.word.downcase.split("").sort
      p self.word
      dict_word = this_word.downcase.split("").sort
      if anagram_word == dict_word
        anagram_list << this_word
      end
    end
    anagram_list
  end
end
