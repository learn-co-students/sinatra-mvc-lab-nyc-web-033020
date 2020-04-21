require 'pry'

# class PigLatinizer

#   def piglatinize(user_text)
    
#     if multiple_words?(user_text)

#       words_array = user_text.split(' ')

#       latinized = words_array.map do |word|
#         if 'aeiou'.split('').include?(word[0])
#           word + "way"
#         else
#           vowel_index = find_first_vowel_index(word)
#           word[vowel_index..-1] + word[0...vowel_index] + "ay"
#         end
#       end
#       return latinized.join(" ")
#     else
#       if 'aeiou'.split('').include?(user_text[0].downcase)
#         return user_text + "way"
#       else
#         vowel_index = find_first_vowel_index(user_text)
#         return user_text[vowel_index..-1] + user_text[0...vowel_index] + "ay"
#       end
#     end
#   end

#   def multiple_words?(user_text)
#     user_text.include?(' ')
#   end

#   def find_first_vowel_index(word)
#     word.each_char.with_index do |char, idx|
#       if 'aeiou'.split('').include?(char)
#         return idx
#       end
#     end
#   end

# end

class PigLatinizer

  def piglatinize(input_str)
    input_str.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
  end

  private

  def vowel?(char)
    char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    if vowel?(word[0])
      word + "way"
    else
      vowel_index = word.index(/[aAeEiIoOuU]/)
      consonants = word.slice(0..vowel_index-1)
      word_leftover = word.slice(vowel_index..word.length)
      word_leftover + consonants + "ay"
    end
  end

end