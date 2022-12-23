class Bottles
  def song
    verses(99, 0)
  end

  def verses(start_num, end_num)
    result = []

    start_num.downto(end_num) do |verse_num|
      result << verse(verse_num)
    end

    result.join("\n")
  end

  def verse(num)
    result = ''
    result << first_line(num)

    if num > 2
      result << second_line(num)
    elsif num == 2
      result << single_bottle
    elsif num == 1
      result = penultimate_verse(num)
    elsif num == 0
      result = last_verse
    end

    result
  end

  private

  def first_line(num)
    "#{num} bottles of beer on the wall, #{num} bottles of beer.\n"
  end

  def second_line(num)
    "Take one down and pass it around, #{num - 1} bottles of beer on the wall.\n"
  end

  def single_bottle
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def penultimate_verse(num)
    "#{num} bottle of beer on the wall, #{num} bottle of beer.\n" +
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def last_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" +
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

end
