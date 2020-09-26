class AddStudentIdToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table(:users) do |t|
      t.confirmable
    end
    add_column :users, :Student_id, :integer
  end
end
