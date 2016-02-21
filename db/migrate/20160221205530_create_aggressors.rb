class CreateAggressors < ActiveRecord::Migration
  def change
    create_table :aggressors do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
