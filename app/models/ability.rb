class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.has_role? :admin
      can :manage, :all
    else
      can :read, Project if user.has_role?(:editor, Project)
      can :read, Observation if user.has_role?(:editor, Observation)
      can :create, Project if user.has_role?(:editor, Project)
      can :create, Observation if user.has_role?(:editor, Observation)
      can :destroy, Project if user.has_role?(:editor, Project)
      can :destroy, Observation if user.has_role?(:editor, Observation)
      can :read, Project
      can :read, Observation
    end
  end
end
