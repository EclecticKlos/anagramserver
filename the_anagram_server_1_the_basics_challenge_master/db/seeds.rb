# require_relative "/words"

n = 0
File.open("/Users/BadMuthaFucka/Desktop/practice/anagramserver/anagram-server-1-the-basics-challenge-master/db/fixtures/words").each do |new_word|
  Word.create(word: new_word)
  n+=1
  if n == 100 then break end
end

# anagram-server-1-the-basics-challenge-master_development