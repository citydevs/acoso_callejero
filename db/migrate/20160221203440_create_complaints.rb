class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.float :lat
      t.float :lng
      t.references :user, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true
      t.references :condition, index: true, foreign_key: true
      t.references :complaint_type, index: true, foreign_key: true
      t.references :bullying_type, index: true, foreign_key: true
      t.references :aggressor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
