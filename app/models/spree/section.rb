class Spree::Section < ActiveRecord::Base
  belongs_to :page, class_name: 'Spree::Page'

  validates :identifier, uniqueness: { case_sensitive: false, scope: 'page_id' }, presence: true
  validates :page, presence: true
end
