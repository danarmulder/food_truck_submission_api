class SubmissionsController < ApplicationController
  def index
    @submissions = Submission.all
    if params.has_key?(:q)
      @submissions = @submissions.where(:day=> params[:q])
    end
    render json: @submissions
  end
  def create
    submission = Submission.new(submission_params)
    submission.save
    render json: submission
  end

  def destroy
    submission = Post.find(params[:id])
    submission.destroy

    render json: {status: "Deleted"}
  end

  private
  def submission_params
    params.require(:submission).permit(:name, :link, :description, :latitude, :longitude, :day, :starttime, :endtime, :verified)
  end
end
