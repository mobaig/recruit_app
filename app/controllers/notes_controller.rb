class NotesController < ApplicationController

  def create
    @candidate = Candidate.find(params[:candidate_id])
    @all_candidate_notes = @candidate.notes.all
    @note = @candidate.notes.build(params[:note])
    if @note.save
      redirect_to candidate_path(@candidate)
    else
      render 'candidates/show'
    end
  end
end
