describe "adding fractions" do
  describe "0 + 0" do
    class Fraction
      attr_reader :numerator
      
      def initialize(numerator, denominator)
        @numerator = numerator
      end

      def +(fraction)
        numerator
      end
    end

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

end