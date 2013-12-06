require File.join(File.dirname(__FILE__), '..', 'lib', 'subject_interceptor')

describe SubjectInterceptor do

  it 'prefixes subject when given' do
    Mail.register_interceptor SubjectInterceptor.new('[STAGING]')

    response = deliver_mail

    expect(response.subject).to eq '[STAGING] some subject'
  end


  def deliver_mail
    Mail.defaults do
      delivery_method :test
    end

    Mail.deliver do
      from 'original.from@example.com'
      to 'original.to@example.com'
      subject 'some subject'
    end
  end

end
