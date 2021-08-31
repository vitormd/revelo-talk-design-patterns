class ProposalDetailingPresenter < SimpleDelegator
  def status_badge_color
    case status
    when 'accepted'
      'success'
    when 'refused'
      'danger'
    else
      'secondary'
    end
  end
end
