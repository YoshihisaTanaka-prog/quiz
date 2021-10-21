class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.integer :user_id
      t.string :title
      t.boolean :is_need_to_shuffle, null: false, default: false

      t.timestamps
    end
  end
end
