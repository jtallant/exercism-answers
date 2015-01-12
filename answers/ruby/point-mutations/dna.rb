class DNA
  def initialize(strand)
    @strand = strand.chars.to_a
    @count = 0
  end

  def hamming_distance(comparison_strand)
    comparison_strand = comparison_strand.chars.to_a
    0.upto(comparison_strand.length).each do |index|
      return @count if no_strand_to_compare?(comparison_strand[index], @strand[index])
      unless comparison_strand[index] == @strand[index]
        @count += 1
      end
    end
  end

  def no_strand_to_compare?(a, b)
    a.nil? || b.nil?
  end
end