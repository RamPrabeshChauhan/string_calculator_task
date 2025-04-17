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
  end
end
