class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :code
      t.integer :credit
      t.string :semester

      t.timestamps
    end
  end
end
