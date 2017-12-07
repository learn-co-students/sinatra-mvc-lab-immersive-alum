require 'pry'
class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    alphabet = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alphabet - vowels


    if vowels.include?(text[0].downcase) && text.size == 1
      text + 'way'
    elsif vowels.include?(text[0].downcase)
      text + 'way'
    elsif consonants.include?(text[0].downcase) && consonants.include?(text[1].downcase) && consonants.include?(text[2].downcase)
      text[3..-1] + text[0..2] + 'ay'
    elsif consonants.include?(text[0].downcase) && consonants.include?(text[1].downcase)
      text[2..-1] + text[0..1] + 'ay'
    elsif consonants.include?(text[0].downcase)
      text[1..-1] + text[0] + 'ay'
    else
      text
    end
  end

  def to_pig_latin(text)
    text.split.collect{|word| piglatinize(word)}.join(" ")
  end
end
