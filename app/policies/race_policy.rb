class RacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.role == "admin"
  end

  def destroy?
    user.role == "admin"
  end
end
