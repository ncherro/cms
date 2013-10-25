module Cms
  class BlocksRegionOverride < ActiveRecord::Base
    belongs_to :blocks_region
    belongs_to :block
    belongs_to :page
    belongs_to :region
  end
end
