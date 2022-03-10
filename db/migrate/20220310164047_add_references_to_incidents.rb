class AddReferencesToIncidents < ActiveRecord::Migration[6.1]
  def change
    add_reference :incidents, :user, null: false, foreign_key: true
  end
end
