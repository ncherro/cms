module Cms
  class Asset < ActiveRecord::Base
    belongs_to :assetable
  end
end
