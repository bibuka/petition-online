class PetitionsController < ApplicationController

    def new
        @petition = Petition.new
    end
    


end
