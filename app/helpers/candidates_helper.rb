module CandidatesHelper
  def cv_link_helper(candidate)
    if candidate.cv.path.blank?
      tag(:i, :class => "icon-remove")
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

  def state_label_helper(state)
    case state.id
    when 1
      content_tag(:span, state.current, :class => "label label-success")
    when 2
      content_tag(:span, state.current, :class => "label label-warning")
    when 3
      content_tag(:span, state.current, :class => "label label-info")
    when 4
      content_tag(:span, state.current, :class => "label label-inverse")
    when 5
      content_tag(:span, state.current, :class => "label label-important")
    end
  end
end
