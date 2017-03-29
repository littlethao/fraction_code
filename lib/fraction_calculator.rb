class FractionCalculator

  def calculate_fraction(fraction_one, fraction_two, operator)
    first_fraction = fraction_one.to_r
    second_fraction = fraction_two.to_r

    if operator == '+'
      return (first_fraction + second_fraction).to_s
    elsif operator == '-'
      return (first_fraction - second_fraction).to_s
    elsif operator == '*'
      return (first_fraction * second_fraction).to_s
    end
  end
end
