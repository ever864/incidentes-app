class CreateIncidents < ActiveRecord::Migration[6.1]
  def change
    create_table :incidents do |t|
      t.string :asunto
      t.date :fecha_incidente
        
      t.timestamps
    end
  end
end
