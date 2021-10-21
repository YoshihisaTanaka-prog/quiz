class CreateChoises < ActiveRecord::Migration[6.1]
  def change
    create_table :choises do |t|
      t.integer :quiz_id
      t.text :answer

      t.timestamps
    end
  end
end
