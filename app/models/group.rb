class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, through: :user_groups
    has_many :group_setlists
    has_many :setlists, through: :group_setlists
    
    

    def users_attributes=(user_attrs)
        self.users.clear
        user_attrs[:user_ids].each do |user_attr|
            self.users << User.find(user_attr) unless user_attr.empty?
        end
    end
    
    def setlists_attributes=(setlist_attrs)
        self.setlists.clear
        setlist_attrs[:setlist_ids].each do |setlist_attr|
            self.setlists << Setlist.find(setlist_attr) unless setlist_attr.empty?
        end
    end
    
end
