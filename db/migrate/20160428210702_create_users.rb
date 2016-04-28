class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.integer :uid, :limit => 8
      t.string :email
      t.string :name

      t.timestamps null: false
    end
  end
end