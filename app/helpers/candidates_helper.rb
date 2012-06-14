module CandidatesHelper
  def cv_link_helper(candidate)
    if candidate.cv.path.blank?
      'x'
    else
      link_to 'CV', download_cv_candidate_path(candidate)
    end
  end

  def existing_cv_helper(candidate)
    unless candidate.cv.path.blank?
      cv_link = link_to("Existing CV: #{File.basename(candidate.cv.url)}", download_cv_candidate_path(candidate))
      content_tag(:div, cv_link, :class => "existing_cv")
    end
  end
end
