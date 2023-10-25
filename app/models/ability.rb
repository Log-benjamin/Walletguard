class Ability
  include CanCan::Ability

  def initialize(current_user)
    user = current_user || User.new

    can :manage, User, id: user.id
    can :manage, Category, author: user
    can :manage, Activity, author: user
    can :manage, CategoryActivity, category_id: { author_id: user.id }
  end
end
