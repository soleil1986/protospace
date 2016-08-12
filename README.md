#User
___
##association
has_many :prototypes
has_many :likes
has_many :comments

##table
- nickname :string
- email :string

#Prototype
___
##association
has_many :likes
has_many :comments
belongs_to :user

##table
- user_id :integer
- image :text
- text :text

#Like
___
##association
belongs_to :user
belongs_to :prototype

##table
- user_id :integer
- prototype_id :integer

#Comments
___
##association
belongs_to :user
belongs_to :prototype

##table
- content :text
- user_id :integer
- prototype_id :integer
