class Registration < ActiveRecord::Base
  attr_accessible :email, :name, :topic, :twitter

  validates_uniqueness_of :name, :email, :twitter
  validates_presence_of :name, :email
  validates_format_of :email, :with => %r/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/

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
