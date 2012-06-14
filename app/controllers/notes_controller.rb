class NotesController < ApplicationController

  def create
    @candidate = Candidate.find(params[:candidate_id])
    @note = @candidate.notes.build(params[:note])
    if @note.save
      redirect_to candidate_path(@candidate)
    else
      render 'candidates/show'
    end
  end
end
