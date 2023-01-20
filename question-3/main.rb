# frozen_string_literal: true

# Call send for each sender
class Notifier
  def initialize(user, senders)
    @user = user
    @senders = senders
  end

  def send_notifications(message)
    @senders.each { |sender| sender.send(@user, message) }
  end
end

# interface
class Sender
  def send(user, message)
    raise "Not implemented #{user} #{message}"
  end
end

# implements Sender
class SMS < Sender
  def send(user, message)
    puts "send SMS to #{user}! #{message}"
  end
end

# implements Sender
class Email < Sender
  def send(user, message)
    puts "send email to #{user}! #{message}"
  end
end

# implements Sender
class Newsletter < Sender
  def send(user, message)
    puts "send NewsLetter to #{user}! #{message}"
  end
end

sms = SMS.new
email = Email.new
newsletter = Newsletter.new
Notifier.new(user, [sms, email, newsletter]).send_notifications('Message sample')
