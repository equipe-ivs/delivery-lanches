class UserPolicy < ApplicationPolicy

  def index?
    user.gerente?
  end
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
