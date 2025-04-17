class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers, delimiter = parse_delimiter(numbers)
    number_array = numbers.split(delimiter).map(&:to_i)
    validate_negatives(number_array)

    number_array.sum
  end

  private

  def parse_delimiter(numbers)
    default_delimiter = /,|\n/

    return [ numbers, default_delimiter ] unless numbers.start_with?("//")

    delimiter = numbers[2]
    numbers = numbers.split("\n", 2).last

    [ numbers, delimiter ]
  end

  def validate_negatives(numbers)
    negatives = numbers.select { |num| num < 0 }

    return if negatives.empty?

    raise "negative numbers not allowed: #{negatives.join(", ")}"
  end
end
