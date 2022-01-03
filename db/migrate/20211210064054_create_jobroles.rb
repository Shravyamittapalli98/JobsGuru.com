class CreateJobroles < ActiveRecord::Migration[6.1]
  def change
    create_table :jobroles do |t|
      t.string :designation
      t.string :company
      t.string :qualification
      t.string :salary
      t.string :experience

      t.timestamps
    end
  end
end
