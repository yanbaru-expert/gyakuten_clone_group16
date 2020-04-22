User.create!(email: 'test@example.com', password: 'password') 

<<<<<<< HEAD
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
=======
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
>>>>>>> master
