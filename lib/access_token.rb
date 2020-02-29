# frozen_string_literal: true

# Use of singleton class to clean up user authentication in controllers
class AccessToken
  class << self
    def encode(payload)
      expire_in = 1.days.from_now
      payload[:expire_in] = expire_in.to_i
      key = Rails.application.secrets.secret_key_base
      JWT.encode(payload, key)
    end

    def decode(token)
      key = Rails.application.secrets.secret_key_base
      JWT.decode(token, key)
    end

    def get_user_from_token(token)
      begin
        response = decode(token)
      rescue JWT::VerificationError
        return nil
      end
      payload = response[0]
      user_id = payload['user_id']
      User.find_by(id: user_id)
    end
  end
end
