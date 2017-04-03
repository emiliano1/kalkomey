class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :additional_info
      t.text :answer
      t.string :slug

      t.timestamps null: false
    end
    add_index :questions, :slug, unique: true
  end
end
