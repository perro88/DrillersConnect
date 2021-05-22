class ApplicationPolicy
  attr_reader :user, :job, :information

  def initialize(user, job, information)
    @user = user
    @job = job
    @information = information
  end

  def index?
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

end
