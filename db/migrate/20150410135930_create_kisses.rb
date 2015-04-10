class CreateKisses < ActiveRecord::Migration
  def change
    create_table :kisses do |t|
      t.string :artist
      t.date :date
      t.string :venue
      t.string :city
      t.string :ticket_price
      t.string :description
    end
  end
end
