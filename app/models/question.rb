# == Schema Information
#
# Table name: questions
#
#  id               :integer          not null, primary key
#  text             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  questionnaire_id :integer
#

class Question < ActiveRecord::Base
  belongs_to :questionnaire
  has_many :answers

  validates :text, presence: true

  def count_answers_with(value)
    answers.where(value: value).count
  end
end
