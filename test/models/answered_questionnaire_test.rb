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

require 'test_helper'

class AnsweredQuestionnaireTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
