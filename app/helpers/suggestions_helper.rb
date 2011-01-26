module SuggestionsHelper

  def suggestion_value(sug)
    str = ""
    str << "x#{sug.count} @ " if sug.count > 1
    str << number_to_currency(sug.value)
    str
  end
end
