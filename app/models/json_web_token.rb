class JsonWebToken
    Secret = ENV["JWT_SECRET_TOKEN"]

    def self.encode(payload)
        JWT.encode(payload, Secret)
    end
    def self.decode(token)
        begin
            decoded = JWT.decode(token, Secret)
        rescue => exception
            return nil            
        end
    end
end