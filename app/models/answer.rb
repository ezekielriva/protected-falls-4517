class Answer < ActiveRecord::Base
  belongs_to :answered_questionnaires
  belongs_to :question
end
