##########
# Users
##########

# Admins.
emails = [
  'rap@endymion.com',
  'dade@shadowlounge.com',
  'rebecca@whiteaisle.com'
  ]
options = {password: 'password', admin: true}
User.create(emails.map{|email| options.merge({email: email})}).each {|user| user.confirm!}

# Non-admin.
User.create(email: 'test@test.com', password: 'password').confirm!

##########
# Categories
##########

Category.create([
  {title: 'Classic'},
  {title: 'Green'},
  {title: 'Vintage'}
])

##########
# Orders
##########

Order.create(
  first: 'Ryan',
  last: 'Porter',
  address1: '5 Island Ave',
  city: 'Miami Beach',
  state: 'FL',
  zip: '33139'
)

Order.create(
  first: 'Dade',
  last: 'Sokoloff',
  address1: 'Somewhere',
  city: 'Somewhere',
  state: 'NH',
  zip: '56789'
)

Order.create(
  first: 'Tori',
  last: 'Spelling',
  address1: 'Somewhere',
  city: 'Melrose',
  state: 'CA',
  zip: '90210'
)