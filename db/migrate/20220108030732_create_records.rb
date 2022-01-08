class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :store
      t.date :date
      t.integer :dispensing_fee
      t.string :applicant

      t.timestamps
    end
  end
end
