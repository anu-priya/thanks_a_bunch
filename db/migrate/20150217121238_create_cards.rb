class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :to
      t.string :subject
      t.string :description

      t.timestamps
    end
  end
end
