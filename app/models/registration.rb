class Registration < ActiveRecord::Base
  attr_accessible :email, :name, :topic, :twitter

  validates_uniqueness_of :name, :email
  validates_uniqueness_of :twitter, allow_nil: true, allow_blank: true
  validates_presence_of :name, :email
  validates_format_of :email, with: %r/.+\@.+\..+/

  before_create do
    self.key = SecureRandom.hex(32)
  end

  def twitter_handle
    %<@#{twitter.gsub(/^@/, '')}>
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
