class CreateCoachings < ActiveRecord::Migration[5.2]
  def change
    create_table :coachings do |t|
      t.string :adress
      t.datetime :slot
      t.string :lesson_type
      t.references :coach_id
      t.references :client_id

      t.timestamps
    end
  end
end
