class CreatePswds < ActiveRecord::Migration
  def change
    create_table :pswds do |t|
      t.string :name
      t.string :pwd

      t.timestamps null: false
    end
  end
end
