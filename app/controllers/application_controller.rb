class ApplicationController < ActionController::API
    rescue_from CanCan::AccessDenied do |exception|
        render json: { erro: "Permissão Negada"}, status: 401
    
    end
    def current_user
        header = request.headers['Authorization']
        header = header.split(' ').last if header
        
        return nil unless header.present?
        
        @decoded = JsonWebToken.decode(header)
        return nil unless @decoded
        
        @user = User.find_by(id: @decoded[0]['user_id'])
    end
    def validate_user
        if current_user.present?
            
            render json: {status: "você está logado", user: current_user }
        else
            render json: {status: "você está deslogado"}, status: 401
            
        end
    end
    

end
