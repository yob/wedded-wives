# coding: utf-8

class GiftsController < ApplicationController
  layout nil

  def new
    @sug  = Suggestion.find(params[:suggestion_id])
    @gift = @sug.gifts.build

    if @sug.finished?
      render :template => "gifts/finished.html.erb"
    else
      render :action => :new
    end
  end

  def create
    @sug  = Suggestion.find(params[:suggestion_id])
    @gift = Gift.new(params[:gift])
    @gift.suggestion = @sug

    if @gift.save
      GiftMailer.detail(@gift).deliver
      output = render_to_string(:template => "gifts/thanks.html.erb")
    else
      output = render_to_string(:action => :new)
    end
    render :text => output
  end
end
