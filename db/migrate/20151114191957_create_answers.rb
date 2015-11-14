class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question, index: true, foreign_key: true
      t.belongs_to :answered_questionnaire, index: true, foreign_key: true
      t.text :value

      t.timestamps null: false
    end
  end
end
