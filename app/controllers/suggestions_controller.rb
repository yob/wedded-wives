class SuggestionsController < ApplicationController

  def index
    @suggestions = Suggestion.all(:include => :gifts)
  end
end
