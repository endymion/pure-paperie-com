class AddUuidToOrder < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.binary :uuid, :limit => 36, :primary => true
    end
    say 'Created UUID.'
  end
end
