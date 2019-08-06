# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :manage, [Post,Comment], user_id: user.id
      can :read, [Post,Comment]
    end
  end
end
