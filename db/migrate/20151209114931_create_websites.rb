class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :status
      t.string :message
      t.string :last_str
      t.string :expected_str

      t.timestamps null: false
    end
  end
end
