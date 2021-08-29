require 'pry'

def reverse_each_word (sentence)
  words = sentence.split
  reversed_words = []

  words.each do |word|
    reversed_words << word.reverse
  end

  reversed_words.join(" ")
end

puts reverse_each_word("Hello there, and how are you?")

#another way of doing it
def reverse_each_word_map (sentence)
  words = sentence.split

  reversed_words = words.map do |word|
    word.reverse
  end

  reversed_words.join(" ")
end

puts reverse_each_word_map("Hello there, general kenobi")

#or even shorter
def reverse_each_word_map_two (sentence)
  words = sentence.split

  reversed_words = words.map(&:reverse)

  reversed_words.join(" ")
end

puts reverse_each_word_map_two("Hello there, general kenobi")

#or even in one line
def reverse_each_word_map_three (sentence)
  sentence.split.map(&:reverse).join(" ")
end

puts reverse_each_word_map_three("Hello there, general kenobi")