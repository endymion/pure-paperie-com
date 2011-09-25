# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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

Category.create([
  {title: 'Classic'},
  {title: 'Green'},
  {title: 'Vintage'}
])