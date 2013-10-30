require "cms/engine"

module Cms

  mattr_accessor :base_controller_class
  self.base_controller_class = 'ApplicationController'

  mattr_accessor :admin_base_controller_class
  self.admin_base_controller_class = 'ApplicationController'

  mattr_accessor :user_class
  self.user_class = 'User'

  def self.base_controller_class
    @@base_controller_class.constantize
  end

  def self.admin_base_controller_class
    @@admin_base_controller_class.constantize
  end

  def self.user_class
    @@user_class.constantize
  end

end
