class Registration < ActiveRecord::Base
  TSHIRT_SIZES = [
    "Men's Small",
    "Men's Medium",
    "Men's Large",
    "Men's X-Large",
    "Men's XX-Large",
    "Women's Small",
    "Women's Medium",
    "Women's Large",
    "Women's X-Large",
    "Women's XX-Large",
  ]

  attr_accessible :email, :name, :topic, :twitter, :tshirt_size

  validates_uniqueness_of :name, :email
  validates_uniqueness_of :twitter, allow_nil: true, allow_blank: true
  validates_presence_of :name, :email
  validates_format_of :email, with: %r/.+\@.+\..+/
  validates_format_of :twitter, with: %r/\A[A-Za-z0-9_]+\Z/, allow_nil: true, allow_blank: true
  validates_inclusion_of :tshirt_size, in: TSHIRT_SIZES, message: "is missing, please pick a t-shirt size!"

  before_create do
    self.key = SecureRandom.hex(32)
  end

  def twitter_handle
    %<@#{twitter.gsub(/^@/, '')}>
  end

  def twitter_image_handle
    if twitter?
      twitter_handle
    else
      "barcampbuffalo"
    end
  end

  def display_name
    first, last = name.split(" ", 2)
    if last
      "#{first} #{last.first}."
    else
      first
    end
  end
end
