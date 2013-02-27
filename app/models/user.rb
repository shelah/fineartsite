class User < ActiveRecord::Base
  attr_accessible :email
  attr_accessor :password, :password_confirmation

  validates_uniqueness_of :email
  validates_confirmation_of :password, :on => :create, :message => "Your passwords should match."

  # Encrypts the password with the user salt
  def encrypt(password)
    self.password_digest=self.class.encrypt(password, salt)
  end

  def authenticate(plaintext)
    self.password_digest == encrypt(plaintext)
  end

  protected
  def encrypt_password(plaintext)
    return if plaintext.blank?
    self.salt = Digest::SHA1.hexdigest(Time.now.to_i.to_s) if new_record?
    self.password_digest = encrypt(plaintext)
  end

  def self.encrypt(plaintext, salt)
    Digest::SHA1.hexdigest("--#{salt}--#{plaintext}--")
  end

end
