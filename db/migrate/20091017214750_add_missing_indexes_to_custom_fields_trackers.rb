#-- encoding: UTF-8
#-- copyright
# OpenProject is a project management system.
#
# Copyright (C) 2012-2013 the OpenProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License version 3.
#
# See doc/COPYRIGHT.rdoc for more details.
#++

class AddMissingIndexesToCustomFieldsTrackers < ActiveRecord::Migration
  def self.up
    add_index :custom_fields_trackers, [:custom_field_id, :tracker_id]
  end

  def self.down
    remove_index :custom_fields_trackers, :column => [:custom_field_id, :tracker_id]
  end
end
