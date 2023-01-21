class AssetsController < ApplicationController
    def index
        render json: Asset.all, status: :ok
       end
     
  
      def create
        new_asset = Asset.create!(asset_params)
        render json: new_asset, status: :created
      end
    
      def show
        # return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
        asset = Asset.find(params[:id])
        render json: asset, include: [:user]
      end
    
      def destroy 
        asset = find_asset(params[:id])
        asset.destroy
        head :no_content
      end
  
      private
    
      def find_asset(id)
        Asset.find_by(id: id)
      end
    
      def asset_params
        params.require(:asset).permit(:price, :name, :category_id, :description, :quantity, :status ,:image_url, :location, :released_year)
      end
      
      # def authorize_user
      #   return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
      # end
end
