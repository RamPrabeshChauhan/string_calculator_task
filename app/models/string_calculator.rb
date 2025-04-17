class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers.split(/,|\n/).map { |num| num.to_i }.sum
  end
end
