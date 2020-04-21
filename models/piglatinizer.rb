class PigLatinizer

  def pigLatinize(word)
    if 'aeiou'.include?(word[0].downcase)
      word += 'way'
    else
      while !'aeiou'.include?(word[0].downcase) do
        letters = word.split('')
        word = letters.push(letters.shift).join('')
        end
      word += 'ay'
      word
    end
  end
  def piglatinize(word)
    word.include?(' ') ? split_sentence(word) : pigLatinize(word)
  end
  def split_sentence(sentence)
    words = sentence.split(' ')
    words.map{|w| pigLatinize(w) }.join(' ')
  end
end

