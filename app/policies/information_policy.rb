class InformationPolicy < ApplicationPolicy
  def destroy?
    current_user.id == @record.user.id
  end
end
