class Calculator

  def evaluate(sum)
    case sum.split[1] 
    when "+"
      [sum] << sum.split.first.to_i + sum.split.last.to_i
    when "-"
      [sum] << sum.split.first.to_i - sum.split.last.to_i
    when "/"
      [sum] << sum.split.first.to_i / sum.split.last.to_i
    end
  end
end
