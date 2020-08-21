class JSONWebToken
    secret = ENV["JWT_SECRET_TOKEN"]

    def self.encode(payload)
        JWT.encode(payload, secret)
    end
    def self.decode(token)
        begin
            decoded = JWT.decode(token, secret)
        rescue => exception
            return nil            
        end
    end
end