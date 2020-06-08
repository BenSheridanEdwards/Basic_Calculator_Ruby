class Calculator

  def evaluate(sum)
    raise "ArgumentError: Only integers can be used to evaluate sums" if numbers_are_not_integers_in(sum)

    first_number = sum.split.first.to_i
    second_number = sum.split.last.to_i
    operator = sum.split[1]

    case operator
    when "+"
      [sum] << add(first_number, second_number)
    when "-"
      [sum] << subtract(first_number, second_number)
    when '/'
      raise "MathError: Numbers can not be divided by zero" if second_number_is_zero(second_number)
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

  def numbers_are_not_integers_in(sum)
    !(sum.split.first !~ /\D/) || !(sum.split.last !~ /\D/)
  end

  def second_number_is_zero(second_number)
    second_number == 0
  end
end
