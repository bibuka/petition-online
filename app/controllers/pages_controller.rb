class PagesController < ApplicationController
    def index
        @petitions=Petition.all
    end
end
