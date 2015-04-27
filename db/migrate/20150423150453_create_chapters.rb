class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :imgcode
      t.string :title
      t.text :subtitle
      t.text :body
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
