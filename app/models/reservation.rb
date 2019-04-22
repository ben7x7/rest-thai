class Reservation < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,     :validate => true
  attribute :pax,       :validate => true
  attribute :date,      :validate => true
  attribute :time,      :validate => true
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "New reservation",
      :to => "benoit.bessiere@me.com, contact@tabledesartisans.ch",
      :from => %("#{name}" <#{email}>)
    }
  end
end
