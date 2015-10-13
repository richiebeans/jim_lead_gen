class SubmissionsController < ApplicationController
  def index
    @submissions = Submission.all
  end

  def create
    @submission = Submission.new(submission_params)

    if @submission.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:email)
  end
end
