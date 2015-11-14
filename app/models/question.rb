class Question < ActiveRecord::Base
  belongs_to :questionnaire

  validates :text, presence: true
end
