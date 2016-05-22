class Bottles

  def song
    verses(99,0)
  end

  def verses(start_count, end_count)
    (end_count..start_count).map { |v| verse(v) }
                            .reverse.join("\n")
  end

  def verse(count)
    quantity = case count
                 when 0 then "No more bottles"
                 when 1 then "1 bottle"
                 else "#{count} bottles"
               end

    new_count = case count
                when 0 then "99 bottles"
                when 1 then "no more bottles"
                when 2 then "1 bottle"
                else "#{count - 1} bottles"
                end

    if count == 0
      "#{quantity} of beer on the wall, " +
        "#{quantity.downcase} of beer.\n" +
        "Go to the store and buy some more, " +
        "#{new_count} of beer on the wall.\n"
    elsif count == 1
      "#{quantity} of beer on the wall, " +
        "#{quantity.downcase} of beer.\n" +
        "Take it down and pass it around, " +
        "#{new_count} of beer on the wall.\n"
    else
      "#{quantity} of beer on the wall, " +
        "#{quantity.downcase} of beer.\n" +
        "Take one down and pass it around, " +
        "#{new_count} of beer on the wall.\n"
    end
  end

end
