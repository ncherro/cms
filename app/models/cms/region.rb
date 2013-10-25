module Cms
  class Region < ActiveRecord::Base
    belongs_to :layout
  end
end
