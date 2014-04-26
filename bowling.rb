class Bowling
  def calc(data)
    score = 0

    data.each_cons(2) do |x,y|
      if x.length == 1
        score += calc_frame(x)
        score += calc_frame(y)
      else
        result = calc_frame(x)
        if result == 10
          score += 10
          score += parse(y[0])
        else
          score += result
        end
      end
    end

    return score
  end

  def calc_frame(frame)
    sum = 0
    frame.each do |x|
      sum += parse(x)
    end
    return sum
  end

  def parse(x)
    case x
    when 'X'
      return 10
    when '-'
      return 0
    else
      return x
    end
  end
end
