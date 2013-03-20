class Passenger < ActiveRecord::Base
  attr_accessible :name

  before_validation :generate_slug

  validates_presence_of :name
  validates_presence_of :slug

  private

    def generate_slug
      self.slug = name.downcase.gsub(/'/, '').gsub(/[^a-z0-9]/i, '-').squeeze('-')
    end
end
