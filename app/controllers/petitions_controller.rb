class PetitionsController < ApplicationController
  before_action :set_article, only: [:show, :destroy]
    def index
      @petitions=Petition.all
    end
    def new
      @petition = Petition.new
    end

      def create
        @petition = Petition.new(petition_params)
        if @petition.save
         flash[:success] = "Petition was successfully created"
         redirect_to petition_path(@petition)
        else
         render 'new'
        end
      end
      def show

     end
     def destroy
        @petition.destroy
        flash[:warning] = "Petition was deleted"
        redirect_to petitions_path
     end

    private
      def petition_params
       params.require(:petition).permit(:title, :description)
      end
      def set_article
        @petition = Petition.find(params[:id])
       end


end
