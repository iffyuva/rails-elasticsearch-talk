class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :last_login_at

      t.timestamps null: false
    end
  end
end
