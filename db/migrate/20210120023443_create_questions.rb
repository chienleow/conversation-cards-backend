class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :sentence
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
