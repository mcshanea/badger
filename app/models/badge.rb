class Badge < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :thumb => "100x100>" }
end
