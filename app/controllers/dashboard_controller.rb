class DashboardController < ApplicationController

  def index
    @startups = Startup.all
    @semifinalstartups = Semifinalgroup.all
    

    @finalstartups = Finalgroup.all
    @finalpos1_id = Finalposition.where(name: 'One').first.id
    @finalpos2_id = Finalposition.where(name: 'Two').first.id
    @finalpos3_id = Finalposition.where(name: 'Three').first.id
  end

end