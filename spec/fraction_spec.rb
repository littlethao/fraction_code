describe "adding fractions" do
  class Fraction
    attr_reader :numerator, :denominator

    def initialize(numerator, denominator)
      @numerator = numerator
      @denominator = denominator
    end

    def +(fraction)
      lcm = denominator.lcm(fraction.denominator)
      Fraction.new(numerator * (lcm/denominator) + (lcm/fraction.denominator) * fraction.numerator, lcm)
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

  describe "1/3 + 1/3" do
    it "equals 2/3" do
      sum = Fraction.new(1, 3) + Fraction.new(1, 3)
      expect(sum.numerator).to eq(2)
      expect(sum.denominator).to eq(3)
    end
  end

  describe "1/4 + 1/8" do
    it "equals 3/8" do
      sum = Fraction.new(1, 4) + Fraction.new(1, 8)
      expect(sum.numerator).to eq(3)
      expect(sum.denominator).to eq(8)
    end
  end

  describe "1/9 + 1/3" do
    it "equals 4/9" do
      sum = Fraction.new(1, 9) + Fraction.new(1, 3)
      expect(sum.numerator).to eq(4)
      expect(sum.denominator).to eq(9)
    end
  end

  describe "1/4 + 1/3" do
    it "equals 7/12" do
      sum = Fraction.new(1, 4) + Fraction.new(1, 3)
      expect(sum.numerator).to eq(7)
      expect(sum.denominator).to eq(12)
    end
  end
end