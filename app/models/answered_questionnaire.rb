# == Schema Information
#
# Table name: answered_questionnaires
#
#  id               :integer          not null, primary key
#  questioned       :string
#  profile          :string
#  conclusions      :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  questionnaire_id :integer
#

class AnsweredQuestionnaire < ActiveRecord::Base
  belongs_to :questionnaire
  has_many :answers

  accepts_nested_attributes_for :answers
end
