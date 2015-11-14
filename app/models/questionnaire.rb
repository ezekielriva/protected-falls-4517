class Questionnaire < ActiveRecord::Base
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :answered_questionnaires, dependent: :destroy

  validates :name, :questions, presence: true

  accepts_nested_attributes_for :questions, allow_destroy: true,
                                            reject_if: :all_blank

end
