class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.integer :grade_final
      t.belongs_to :alumn, index: true
      t.belongs_to :subject, index: true 
      t.timestamps
    end
  end
end
