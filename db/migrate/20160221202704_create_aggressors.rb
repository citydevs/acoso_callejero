class CreateAggressors < ActiveRecord::Migration
  def change
    create_table :aggressors do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
