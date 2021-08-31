class EnrollmentsQuery
  def self.call(params, scope = Enrollment.all)
    new(params, scope).filter
  end

  def initialize(params, scope = Enrollment.all)
    @scope = scope
    @has_cpf = params[:has_cpf]
    @has_linkedin = params[:has_linkedin]

  def filter
    apply_has_cpf_filter
    apply_has_linkedin_filter
    apply_sort
  end

  private

  def apply_has_cpf_filter
    @scope = @scope.where.not(cpf: @has_cpf)
  end

  def apply_has_linkedin_filter
    @scope = @scope.where.not(cpf: @has_linkedin)
  end

  def apply_sort
    @scope = @scope.order(id: :desc)
  end
end
