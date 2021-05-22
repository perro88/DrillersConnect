class JobPolicy < ApplicationPolicy
  
  def index?
    current_user == user_signed_in?
  end

  def show?
    current_user == user_signed_in?
  end

  def create?
    current_user == user.has_role?(:employer)
  end

  def new?
    current_user == user.has_role?(:employer)
  end

  def update?
    current_user.id == user.has_role?(:employer)
  end

  def edit?
    current_user.id == user.has_role?(:employer)
  end

  def destroy?
    current_user.id == Job.id
  end
end
