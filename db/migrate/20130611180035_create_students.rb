class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :photo_url
      t.string :twitter
      t.integer :section

      t.timestamps
    end
  end
end
