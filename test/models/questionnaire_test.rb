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

require 'test_helper'

class QuestionnaireTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
