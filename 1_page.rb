class Hash
  def shuffle
    Hash[self.to_a.sample(self.length)]
  end

  def shuffle!
    self.replace(self.shuffle)
  end
end

def add_to(phrases)
  puts "please give me a phrase that you wish to include in your poem"
  phrase = gets.chomp.downcase.to_sym

  puts "please tell me how many syllables you consider that phrase to have"
  syllables = gets.chomp
  phrases[phrase] = syllables.to_i
end

def layout(structure, phrases)
  structure.each do |x|
    spit(phrases, x)
  end
end

def spit(dictionary, length_we_want)
  dictionary.shuffle!
  poem = []
  poem_length = 0
  1000.times{dictionary.each do |phrase, syllables|
    if poem_length < length_we_want
      poem << phrase.to_s
      poem_length += syllables
    end
    if poem_length > length_we_want
      poem.pop
      poem_length -= syllables
    end
  end}
  puts poem.shuffle.join(" ").upcase
end

phrases = {}
structure = []
puts "how many phrases are you going to add?"
phrase_number = gets.chomp.to_i
phrase_number.times{add_to(phrases)}
puts "how many lines are you writing?"
lines_number = gets.chomp.to_i

def liner(lines_number, structure)
  arr = (1..lines_number).to_a
  arr.each do |x|
    puts "how many syllables on line #{x}?"
    syllables = gets.chomp.to_i
    structure << syllables
  end
end

liner(lines_number, structure)

layout(structure, phrases)
puts phrases
puts "structure: #{structure}"
