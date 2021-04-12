class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :star_date
      t.date :finish_date
      t.string :status, default: 'propuesta'
      t.timestamps
    end
  end
end
