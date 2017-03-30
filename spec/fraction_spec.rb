describe "adding fractions" do
  class Fraction
    attr_reader :numerator
    
    def initialize(numerator, denominator)
      @numerator = numerator
    end

    def +(fraction)
      numerator + fraction.numerator
    end
  end

  describe "0 + 0" do
    it "equals 0" do 
      sum = Fraction.new(0, 1) + Fraction.new(0, 1)
      expect(sum).to eq(0)
    end
  end

  describe "1 + 0" do
    it "equals 1" do
      sum = Fraction.new(1, 1) + Fraction.new(0, 1)
      expect(sum).to eq(1)
    end
  end

  describe "0 + 1" do
    it "equals 1" do
      sum = Fraction.new(0, 1) + Fraction.new(1, 1)
      expect(sum).to eq(1)
    end
  end

  describe "1 + 1" do
    it "equals 2" do
      sum = Fraction.new(1, 1) + Fraction.new(1, 1)
      expect(sum).to eq(2)
    end
  end

  describe "3 + 5" do
    it "equals 8" do
      sum = Fraction.new(3, 1) + Fraction.new(5, 1)
      expect(sum).to eq(8)
    end
  end

end