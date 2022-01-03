class CreateApps < ActiveRecord::Migration[6.1]
  def change
    create_table :apps do |t|
      t.string :fullname
      t.string :enteryouremail
      t.bigint :mobileNo
      t.string :qualification
      t.string :currentcity
      t.string :experience

      t.timestamps
    end
  end
end
