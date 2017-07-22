class CreateLetters < ActiveRecord::Migration[5.1]
  def change
    create_table :letters do |t|
      t.string :name
      t.string :stambuk
      t.string :department
      t.string :birth_place
      t.string :birth_date
      t.string :address
      t.string :phone
      t.string :yudisium_date
      t.string :essay_title
      t.string :parents_name
      t.string :employee_number
      t.string :employee_level
      t.string :parents_phone
      t.string :company_name
      t.string :letter_kind
      t.date :letter_date
      t.string :letter_number
      t.string :semester_genap_ganjil
      t.string :education_year
      t.string :formers
      t.date :disposition_date
      t.string :administration_head
      t.string :institute_to
      t.string :number_diploma_university
      t.string :number_diploma_faculty

      t.timestamps
    end
  end
end
