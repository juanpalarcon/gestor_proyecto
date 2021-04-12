class ProjectsController < ApplicationController
    def dashboard
        @projects = Project.all

        if params[:status].present?
    	    @projects = Project.where('status = ?', params[:status])
        else
    	    @projects = Project.all
        end
  end
    

    def create
        @project =  Project.create(name: params[:name], description: params[:description], star_date: params[:star_date], finish_date: params[:finish_date], status: params[:status])
    end
end
