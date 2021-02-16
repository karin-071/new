class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :department
      t.string :address
      t.string :hobby

      t.timestamps
    end
  end
end
