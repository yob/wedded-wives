class GiftMailer < ActionMailer::Base
  default :from => "unlawfullyweddedwives@gmail.com",
          :bcc  => "unlawfullyweddedwives@gmail.com"

  def detail(gift)
    @gift = gift

    mail(:to      => gift.email,
         :subject => "Jess and Charlie's Wedding")
  end
end
