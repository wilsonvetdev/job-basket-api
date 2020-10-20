class JobsController < ApplicationController

    def create
        job = Job.create(job_params)
        render json: job
    end

    private
    
    def job_params 
        params.permit(:company_name, :url, :status, :user_id)
    end
end
