class Reservation < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,     :validate => true
  attribute :pax,       :validate => true
  attribute :date,      :validate => true
  attribute :time,      :validate => true
  attribute :message,   :validate => false
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "New reservation",
      :to => "contact@tabledesartisans.ch",
      :from => %("#{name}" <#{email}>)
    }
  end
end
