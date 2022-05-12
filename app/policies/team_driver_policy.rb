class TeamDriverPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.role == "admin"
        scope.all
      else
        raise Pundit::NotAuthorizedError, "Not authorized to view this content"
      end
    end
  end

  def create?
    user.role == "admin"
  end

  def destroy?
    user.role == "admin"
  end
end
