class AnsweredQuestionnaire < ActiveRecord::Base
  belongs_to :questionnaire
  has_many :answers

  accepts_nested_attributes_for :answers
end
