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

class AddRelationsPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "issue_relations", :action => "new", :description => "label_relation_new", :sort => 1080, :is_public => false, :mail_option => 0, :mail_enabled => 0
    Permission.create :controller => "issue_relations", :action => "destroy", :description => "label_relation_delete", :sort => 1085, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.find_by_controller_and_action("issue_relations", "new").destroy
    Permission.find_by_controller_and_action("issue_relations", "destroy").destroy
  end
end
