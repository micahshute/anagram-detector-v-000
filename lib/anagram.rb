# Your code goes here!
class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(words)
    word_hash = to_hash(self.word)
    words.select{|test| hash_equality(word_hash, to_hash(test))}
  end

  private
  def to_hash(word)
    chars = word.split('')
    hash = {}
    chars.each{|c| !!hash[c] ? hash[c] += 1 : hash[c] = 1}
    hash
  end

  def hash_equality(hash1, hash2)
    (hash1.keys.length == hash2.keys.length) && hash1.keys.all?{|k| hash1[k] == hash2[k]}
  end
end
