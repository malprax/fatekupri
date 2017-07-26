class CreateStudentRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :student_registrations do |t|
      t.string :full_name
      t.string :address
      t.string :city
      t.string :state
      t.string :pos_code
      t.string :phone
      t.string :birth_date
      t.string :birth_place
      t.string :religion
      t.string :gender
      t.string :blood
      t.string :passed_year
      t.string :citizen

      t.string :father_name
      t.string :father_job
      t.string :mother_name
      t.string :mother_job
      t.string :parents_phone_number
      t.string :parents_address
      t.string :parents_city
      t.string :parents_state
      t.string :parents_pos_code

      t.string :institute_from
      t.string :institute_address
      t.string :institute_city
      t.string :institute_state
      t.string :institute_pos_code

      t.string :department
      t.string :department_sub
      t.string :department_code
      t.integer :number_test
      t.integer :number_form
      t.string :room

      t.timestamps
    end
  end
end
