class CreateSelectionProcesses < ActiveRecord::Migration
  def change
    create_table :selection_processes do |t|
      t.string :name_process
      t.string :place
      t.string :duration
      t.date :start_date
      t.date :end_date
      t.string :state

      t.timestamps
    end
  end
end

#Duration, se cambia a Integer en otra migracion.