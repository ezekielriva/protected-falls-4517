class CreateAnsweredQuestionnaires < ActiveRecord::Migration
  def change
    create_table :answered_questionnaires do |t|
      t.string :questioned
      t.string :profile
      t.text :conclusions

      t.timestamps null: false
    end

    add_reference :answered_questionnaires, :questionnaire, index: true, foreign_key: true
  end
end
