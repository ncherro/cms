require "cms/engine"

module Cms

  mattr_accessor :controller_base_class
  self.controller_base_class = 'ApplicationController'

  mattr_accessor :admin_controller_base_class
  self.admin_controller_base_class = 'ApplicationController'

  mattr_accessor :user_class
  self.user_class = 'User'

  def self.controller_base_class
    @@controller_base_class.constantize
  end

  def self.admin_controller_base_class
    @@admin_controller_base_class.constantize
  end

  def self.user_class
    @@user_class.constantize
  end

end
