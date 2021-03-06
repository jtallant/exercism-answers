class Year

  def initialize(year)
    @year = year
  end

  def leap?
    divisible_by_400? || divisible_by_4? && false == divisible_by_100?
  end

  def divisible_by_4?
    @year % 4 == 0
  end

  def divisible_by_100?
    @year % 100 == 0
  end

  def divisible_by_400?
    @year % 400 == 0
  end
end