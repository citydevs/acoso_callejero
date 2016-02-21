class CreateBullyingTypes < ActiveRecord::Migration
  def change
    create_table :bullying_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
