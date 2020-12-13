class CreateStudentProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :student_profiles do |t|
      t.integer :student_id
      t.string :name
      t.string :address
      t.string :guardian1
      t.string :guardian1_number
      t.string :guardian2
      t.string :guardian2_number

      t.timestamps
    end
  end
end
