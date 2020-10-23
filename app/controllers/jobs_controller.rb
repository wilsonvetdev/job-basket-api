class JobsController < ApplicationController

    before_action :authorized

    def create
        job = @user.jobs.create(job_params)
        render json: job
    end

    def update
        job = @user.jobs.find(params[:id])
        job.update(job_params)
        render json: job
    end

    def destroy
        job = @user.jobs.find(params[:id])
        job.destroy
        render json: job
    end

    private
    
    def job_params 
        params.permit(:company_name, :url, :status, :user_id)
    end
    
end
