class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.text :business_name
      t.text :personal_name
      t.text :address
      t.text :postcode
      t.text :city
      t.integer :phone
      t.text :website
      t.text :email
      t.binary :logo
      t.text :text
      t.integer :status

      t.timestamps null: false
    end
  end
end
