class AddQuestionnaireIdToQuestion < ActiveRecord::Migration
  def change
    add_reference :questions, :questionnaire, index: true, foreign_key: true
  end
end
