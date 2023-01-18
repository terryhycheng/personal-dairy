class Diary
  def make_snippet(text)
    text_arr = text.split(" ")
    if text_arr.length > 5
      text_arr.slice(0, 5).join(" ") + "..."
    else
      text
    end
  end

  def count_words(text)
    text.split(" ").length
  end
end