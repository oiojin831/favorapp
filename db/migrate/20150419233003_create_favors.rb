class CreateFavors < ActiveRecord::Migration
  def change
    create_table :favors do |t|
      t.text :contents, null: false
      t.string :friend, null: false

      t.timestamps null: false
    end
  end
end
