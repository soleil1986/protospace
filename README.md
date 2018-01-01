# User
## association
has_many :prototypes  
has_many :likes  
has_many :comments  

## table
- username :string
- member :string
- profile :string
- works :string
- avatar :text
- email :string

# Prototype
## association
has_many :likes  
has_many :comments  
has_many :images  
belongs_to :user  

## table
- user_id :integer
- title :string
- catchcopy :string
- concept :text

# Like
## association
belongs_to :user  
belongs_to :prototype  

## table
- user_id :integer
- prototype_id :integer

# Comments
## association
belongs_to :user  
belongs_to :prototype  

## table
- content :text
- user_id :integer
- prototype_id :integer
