class RailsAdminPolicy
  def initialize(user)
    @user = user
  end

  def allowed_access?
    allowed_email? && allowed_company?
  end

  def allowed_email?
    ALLOWED_EMAILS.include?(@user.email)
  end

  def allowed_company?
    ALLOWED_COMPANIES.include(user.company.name)
  end
end
