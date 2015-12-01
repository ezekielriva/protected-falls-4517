# == Schema Information
#
# Table name: answers
#
#  id                        :integer          not null, primary key
#  question_id               :integer
#  answered_questionnaire_id :integer
#  value                     :text
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class Answer < ActiveRecord::Base
  belongs_to :answered_questionnaires
  belongs_to :question

  validates :value, presence: true
end
