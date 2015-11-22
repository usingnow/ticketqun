class AddClientnameToClients < ActiveRecord::Migration
  def change
    add_column :clients, :clientname, :string
  end
end
