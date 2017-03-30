describe "adding fractions" do
  describe "0 + 0" do
    class Fraction

      def initialize(numerator, denominator)

      end

      def +(fraction)
        0
      end
    end

    it "equals 0" do 
      sum = Fraction.new(0, 1) + Fraction.new(0, 1)
      expect(sum).to eq(0)
    end
  end
end