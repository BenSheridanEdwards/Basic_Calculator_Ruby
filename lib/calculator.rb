class Calculator

  def evaluate(sum)
    first_number = sum.split.first.to_i
    second_number = sum.split.last.to_i
    operator = sum.split[1]

    case operator
    when "+"
      [sum] << first_number + second_number
    when "-"
      [sum] << first_number - second_number
    when '/'
      [sum] << first_number / second_number
    when "*"
      [sum] << first_number * second_number
    end
  end
end
