require "mail"

class SubjectInterceptor
  def initialize prefix
    @prefix = prefix
  end

  def delivering_email(message)
    message.subject = "#{@prefix} #{message.subject}"
  end
end
