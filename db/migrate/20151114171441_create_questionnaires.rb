class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string :name
      t.integer :state
      t.datetime :close_at
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
