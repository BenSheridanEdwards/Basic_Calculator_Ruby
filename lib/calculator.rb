class Calculator

  def evaluate(sum)
    if sum.split[1] == "+"
      return [sum] << sum.split.first.to_i + sum.split.last.to_i
    end
  end
end
