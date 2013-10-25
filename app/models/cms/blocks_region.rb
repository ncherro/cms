module Cms
  class BlocksRegion < ActiveRecord::Base
    belongs_to :block
    belongs_to :region
  end
end
