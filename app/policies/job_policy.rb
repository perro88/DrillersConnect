class JobPolicy < ApplicationPolicy

  def create?
    @user.has_role?(:employer)
  end

  def update?
    @user.has_role?(:employer)
  end

  def destroy?
    current_user.id == @record.user.id
  end
end
