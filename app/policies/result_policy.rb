class ResultPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.role == "admin"
        scope.all
      else
        scope.all
      end
    end
  end

  def show?
    true
  end

  def create?
    user.role == "admin"
  end

  def update?
    user.role == "admin"
  end

  def destroy?
    user.role == "admin"
  end
end
