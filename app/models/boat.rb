# == Schema Information
#
# Table name: boats
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  slug       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Boat < ActiveRecord::Base
  attr_accessible :name

  before_validation :generate_slug

  validates_presence_of :name
  validates_presence_of :slug

  private

    def generate_slug
      self.slug = name.downcase.gsub(/'/, '').gsub(/[^a-z0-9]/i, '-').squeeze('-')
    end
end
