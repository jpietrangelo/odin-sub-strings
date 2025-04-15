#!/usr/bin/env ruby
# frozen_string_literal: true

# The Odin Project
# Sub Strings

WORDS = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, word_list)
  result = {}
  search_phrase = String.new

  search_array = phrase.each_char.reject do |character|
    !(character.ord.between?(65, 90) || character.ord.between?(97, 122) || character.ord == 32)
  end
  search_array.each { |character| search_phrase.concat(character.downcase) }

  word_list.each do |word|
    result[word] = 0
    0.upto(search_phrase.length - word.length) do |i|
      search_word = search_phrase.slice(i, word.length)
      result[word] += 1 if word == search_word
    end
  end
  result.delete_if { |key, value| value == 0 }
end

# Examples:
# puts substrings("below", WORDS)
# -> {"below" => 1, "low" => 1}
# puts substrings("Howdy partner, sit down! How's it going?", WORDS)
# -> {"down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1}
