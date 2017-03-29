require "fraction_calculator"

describe FractionCalculator do
  subject(:fraction_calculator) { described_class.new }

  context 'addition' do
    it 'adds the second fraction to the first fraction and returns the result as fraction' do
        result = fraction_calculator.calculate_fraction("1/3", "2/4", "+")
        expect(result).to eq("5/6")
    end
  end

  context 'subtraction' do
    it 'subtracts the second fraction from the first fraction and returns the result as fraction' do
        result = fraction_calculator.calculate_fraction("1/3", "2/4", "-")
        expect(result).to eq("-1/6")
    end
  end

  context 'multiplication' do
    it 'multiplies the first fraction times the second fraction and returns the result as fraction' do
        result = fraction_calculator.calculate_fraction("1/3", "2/4", "*")
        expect(result).to eq("1/6")
    end
  end

  context 'division' do
    it 'divides the first fraction by the second fraction and returns the result as fraction' do
        result = fraction_calculator.calculate_fraction("1/3", "2/4", "/")
        expect(result).to eq("2/3")
    end
  end
end
