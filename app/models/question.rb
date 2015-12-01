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

  validates :text, presence: true
end
