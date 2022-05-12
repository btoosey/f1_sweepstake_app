class ChoicePolicy < ApplicationPolicy
  def show?
    true
  end

  def create?
    true
  end

  def update?
    user.role == "admin" or record.user_league.user == user
  end
end
