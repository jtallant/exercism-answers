class Robot

  attr_reader :name
  attr_reader :previous_names

  def initialize
    @previous_names = []
    assign_name
  end

  def reset
    assign_name
  end

  private

    def assign_name
      @name = unique_name
      @previous_names << @name
    end

    def unique_name
      name = random_name
      return unique_name if previous_names.include?(name)
      name
    end

    def random_name
      two_random_letters.upcase + three_random_numbers.to_s
    end

    def two_random_letters
      random_letter + random_letter
    end

    def random_letter
      ('a'..'z').to_a.sample
    end

    def three_random_numbers
      rand(100..999)
    end
end