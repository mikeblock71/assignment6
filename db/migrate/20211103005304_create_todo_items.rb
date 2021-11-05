class CreateTodoItems < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_items do |t|
      t.date :due_date
      t.string :task_title
      t.string :description
      t.references :TodoList, null: false, foreign_key: true

      t.timestamps
    end
  end
end
