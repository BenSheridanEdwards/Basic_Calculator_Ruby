class Calculator

  def evaluate(sum)
    first_number = sum.split.first.to_i
    second_number = sum.split.last.to_i
    operator = sum.split[1]

    case operator
    when "+"
      [sum] << add(first_number, second_number)
    when "-"
      [sum] << subtract(first_number, second_number)
    when '/'
      [sum] << divide(first_number, second_number)
    when "*"
      [sum] << multiply(first_number, second_number)
    when "x"
      [sum] << multiply(first_number, second_number)
    else
      raise "ArgumentError: Invalid operator #{operator}"
    end
  end

  private

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end
end
