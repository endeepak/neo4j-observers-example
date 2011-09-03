class AuditsController < ApplicationController
  def index
    @audits = Audit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @audits }
    end
  end
end
