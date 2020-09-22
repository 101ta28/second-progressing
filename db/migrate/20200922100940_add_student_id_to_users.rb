class AddStudentIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Student_id, :integer
  end
end
