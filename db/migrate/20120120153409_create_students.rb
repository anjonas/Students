class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.datetime :started_at

      t.timestamps
    end
  end
end
