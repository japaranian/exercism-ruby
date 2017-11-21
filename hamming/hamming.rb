class Hamming
  def self.compute(strand1, strand2)
    # strand1_array = strand1.split("")
    # strand2_array = strand2.split("")

    if strand1.length != strand2.length
      raise ArgumentError
    end

    i = 0

    strand1.each_char.with_index do |letter, index|
      if letter != strand2[index]
        i+=1
      end
    end
    return i
  end
end