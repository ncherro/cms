module Cms
  class Page < ActiveRecord::Base
    belongs_to :menu_item
  end
end
