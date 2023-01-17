class Diary
  def make_snippet(text)
    text.split(" ").slice(0, 5).join(" ") + "..."
  end
end