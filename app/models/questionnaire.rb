# == Schema Information
#
# Table name: questionnaires
#
#  id         :integer          not null, primary key
#  name       :string
#  state      :integer
#  close_at   :datetime
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Questionnaire < ActiveRecord::Base
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :answered_questionnaires, dependent: :destroy

  validates :name, :questions, presence: true

  accepts_nested_attributes_for :questions, allow_destroy: true,
                                            reject_if: :all_blank

  delegate :count, to: :answered_questionnaires, prefix: true

end
