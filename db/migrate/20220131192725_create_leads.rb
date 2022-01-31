class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.string :clients_name
      t.string :source
      t.string :product
      t.date :renewal_date
      t.integer :premium
      t.integer :income
      t.string :notes
      t.string :underwriter

      t.timestamps
    end
  end
end
