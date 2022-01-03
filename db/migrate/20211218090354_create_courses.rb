class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :designation
      t.string :company
      t.string :location
      t.string :qualification
      t.string :salary
      t.string :experience

      t.timestamps
    end
  end
end
