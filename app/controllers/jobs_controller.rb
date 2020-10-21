class JobsController < ApplicationController

    def create
        job = Job.create(job_params)
        render json: job
    end

    def update
        job = Job.find(params[:id])
        job.update(job_params)
        render json: job
    end

    def destroy
        job = Job.find(params[:id])
        job.destroy
        render json: job
    end

    private
    
    def job_params 
        params.permit(:company_name, :url, :status, :user_id)
    end
end
