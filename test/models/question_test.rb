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

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
