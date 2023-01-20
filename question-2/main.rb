# frozen_string_literal: true

# interface
class NotificationService
  def initialize(user, order)
    @user = user
    @order = order
  end

  def notify
    raise "Not implemented #{message}"
  end
end

# implementation of NotificationService
class WhatsappNotificationService < NotificationService
  def notify
    WhatsappClient.new.deliver!(format_message)
  end

  private

  def format_message
    "Message formatted #{@user} - oder: #{@order}"
  end
end

user = User.find_by(key: params[:key])
order = user.order.last

wpp_notifier = WhatsappNotificationService.new(user, order)
wpp_notifier.notify
