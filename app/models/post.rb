class Post < ActiveRecord::Base
	has_many :tags, :through => :posts_to_tag
	has_many :posts_to_tag
  validates :body, :presence => true
  validates :title, :presence => true
  before_create :capitalize_author

  def all_tags
  	s = ""
  	self.tags.each_with_index do |tag, index|
  		s += tag.name if index == 0
  		s += "," + tag.name unless index ==0
  	end
  	return s
  end

  private 
  def capitalize_author
  	self.author = self.author.capitalize
  end
end
