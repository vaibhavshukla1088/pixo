class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
      cannot :destroy, JobOpening
    elsif user.staff?
      can :read, JobOpening
      can :create, JobOpening
      can :update, JobOpening
      # Exclude the :destroy action for JobOpening
      cannot :destroy, JobOpening
    end
  end
end
