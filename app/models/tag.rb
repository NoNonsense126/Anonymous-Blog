class Tag < ActiveRecord::Base
	has_many :posts, :through => :posts_to_tag
	has_many :posts_to_tag
  validates :name, :presence => true, :uniqueness => true
  before_create :downcase_tag

  private 
  def downcase_tag
  	self.name = self.name.downcase
  end

end
