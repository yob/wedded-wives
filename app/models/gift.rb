# coding: utf-8

class Gift < ActiveRecord::Base

  belongs_to :suggestion

  validates_presence_of :name, :email
  validates_length_of   :name,  :maximum => 128
  validates_length_of   :email, :maximum => 128

  def description
    self.suggestion.andand.description
  end

  def value
    self.suggestion.andand.value
  end
end
