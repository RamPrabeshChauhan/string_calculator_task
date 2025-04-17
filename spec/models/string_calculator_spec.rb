require "rails_helper"

RSpec.describe StringCalculator, type: :model do
  describe '#add' do
    it 'return 0 for an empty sting' do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number for a single number string' do
      calculator = StringCalculator.new
      expect(calculator.add("1")).to eq(1)
    end

    it 'return the sum of two comma-separated numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("1,5")).to eq(6)
    end

    it 'handles newlines between numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters' do
      calculator = StringCalculator.new
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it 'throws as exception for a single negative number' do
      calculator = StringCalculator.new
      expect { calculator.add("1,-2") }.to raise_error("negative numbers not allowed: -2")
    end

    it 'throws an exception for multiple negative numbers' do
      calculator = StringCalculator.new
      expect { calculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2, -3")
    end
  end
end
