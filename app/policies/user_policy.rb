class UserPolicy < ApplicationPolicy
  def index?
    current_user == user_signed_in?
  end

  def show?
    current_user == user_signed_in?
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    current_user == user_signed_in?
  end

  def edit?
    current_user == user_signed_in?
  end

  def destroy?
    current_user == user_has_role?(:admin)
  end
end
