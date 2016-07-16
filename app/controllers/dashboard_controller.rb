class DashboardController < ApplicationController

    def index
        @startups = Startup.all
        @semifinalstartups = Semifinalgroup.all
        @finalstartups = Finalgroup.all

    end
    #@finalpos1_id = Finalposition.where(name: 'One').first.id
    #@finalpos2_id = Finalposition.where(name: 'Two').first.id
    #@finalpos3_id = Finalposition.where(name: 'Three').first.id

    #Finalgroup.where(finalposition_id: @pos)


    #@startup1 = Startup.find(1)

    def test
        @startups = Startup.all
        @semifinalstartups = Semifinalgroup.all
        @finalstartups = Finalgroup.all
    
    end



end