class UserPolicy < ApplicationPolicy
  
  def destroy?
    @user_has_role?(:admin)
  end
end
