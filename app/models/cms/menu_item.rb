module Cms
  class MenuItem < ActiveRecord::Base

    belongs_to :menu
    has_one :page

    accepts_nested_attributes_for :page, allow_destroy: true,
      reject_if: :all_blank
    validates_associated :page

  end
end
