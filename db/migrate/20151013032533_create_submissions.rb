class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string   "email"
      t.timestamps null: false
    end
  end
end
