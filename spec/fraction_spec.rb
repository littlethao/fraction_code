describe "adding fractions" do
  class Fraction
    attr_reader :numerator, :denominator
    
    def initialize(numerator, denominator)
      @numerator = numerator
      @denominator = denominator
    end

    def +(fraction)
      Fraction.new(numerator + fraction.numerator, denominator.lcm(fraction.denominator))
    end

    def to_i
      numerator
    end
  end

  describe "0 + 0" do
    it "equals 0" do 
      sum = Fraction.new(0, 1) + Fraction.new(0, 1)
      expect(sum.to_i).to eq(0)
    end
  end

  describe "1 + 0" do
    it "equals 1" do
      sum = Fraction.new(1, 1) + Fraction.new(0, 1)
      expect(sum.to_i).to eq(1)
    end
  end

  describe "0 + 1" do
    it "equals 1" do
      sum = Fraction.new(0, 1) + Fraction.new(1, 1)
      expect(sum.to_i).to eq(1)
    end
  end

  describe "1 + 1" do
    it "equals 2" do
      sum = Fraction.new(1, 1) + Fraction.new(1, 1)
      expect(sum.to_i).to eq(2)
    end
  end

  describe "3 + 5" do
    it "equals 8" do
      sum = Fraction.new(3, 1) + Fraction.new(5, 1)
      expect(sum.to_i).to eq(8)
    end
  end

  describe "1/2 + 0" do
    it "equals 1/2" do
      sum = Fraction.new(1, 2) + Fraction.new(0, 1)
      expect(sum.numerator).to eq(1)
      expect(sum.denominator).to eq(2)
    end
  end

  describe "0 + 1/2" do
    it "equals 1/2" do
      sum = Fraction.new(0, 1) + Fraction.new(1, 2)
      expect(sum.numerator).to eq(1)
      expect(sum.denominator).to eq(2)
    end
  end
end