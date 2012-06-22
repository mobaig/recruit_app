module CandidatesHelper
  def cv_link_helper(candidate)
    if candidate.cv.path.blank?
      render(:inline => raw("<i class='icon-minus'></i>"))
    else
      link_to raw("<i class='icon-download'></i>"), download_cv_candidate_path(candidate)
    end
  end

  def existing_cv_helper(candidate)
    unless candidate.cv.path.blank?
      cv_link = "Existing CV: #{link_to(File.basename(candidate.cv.url), download_cv_candidate_path(candidate))}"
      content_tag(:div, cv_link.html_safe, :class => "existing_cv")
    end
  end

  def state_label_helper(state)
    case state.name
    when "New"
      content_tag(:span, state.name, :class => "label label-success")
    when "Test Sent"
      content_tag(:span, state.name, :class => "label label-warning")
    when "Test Under Review"
      content_tag(:span, state.name, :class => "label label-warning")
    when "Interview Scheduled"
      content_tag(:span, state.name, :class => "label label-info")
    when "Offered"
      content_tag(:span, state.name, :class => "label label-info")
    when "Offer Declined"
      content_tag(:span, state.name, :class => "label label-inverse")
    when "Rejected"
      content_tag(:span, state.name, :class => "label label-important")
    end
  end

  def candidate_state_select_helper(form)
    form.collection_select :state_id, State.all, :id, :state, :class => 'select_field'
  end

  def dd_display_external_link(external_link)
    external_link.blank? ? '..' : link_to("#{external_link}", "http://#{external_link}")
  end

  def dd_display_internal_link(resource, method)
    resource.blank? ? '..' : link_to("#{resource.send(method)}", resource)
  end

  def dd_display_email(email)
    email.blank? ? '..' : mail_to("#{email}")
  end
end
