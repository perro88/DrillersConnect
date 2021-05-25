class InformationPolicy < ApplicationPolicy
  def destroy?
    @user.id == @record.user.id
  end
end
