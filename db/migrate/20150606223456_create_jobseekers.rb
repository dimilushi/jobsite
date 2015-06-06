class CreateJobseekers < ActiveRecord::Migration
  def change
    create_table :jobseekers do |t|
      t.text :business_name
      t.text :personal_name
      t.text :address
      t.text :postcode
      t.text :city
      t.integer :phone
      t.text :website
      t.text :email
      t.binary :photo
      t.integer :experience
      t.binary :cv
      t.integer :status
      t.text :text

      t.timestamps null: false
    end
  end
end
