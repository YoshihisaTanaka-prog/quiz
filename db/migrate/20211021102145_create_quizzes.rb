class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.integer :category_id
      t.integer :answer_id
      t.text :question
      t.text :commentary
      t.boolean :is_need_to_shuffle, null: false, default: false

      t.timestamps
    end
  end
end
