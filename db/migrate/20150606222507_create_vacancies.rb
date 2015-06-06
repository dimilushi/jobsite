class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :title
      t.text :text
      t.integer :salary
      t.text :salary_type
      t.text :schedule
      t.binary :photo
      t.text :city
      t.text :postcode
      t.text :category
      t.integer :status

      t.timestamps null: false
    end
  end
end
