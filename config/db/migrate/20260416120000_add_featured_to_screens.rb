# frozen_string_literal: true

ROM::SQL.migration do
  change do
    alter_table :screen do
      add_column :featured, :boolean, null: false, default: false
    end
  end
end
