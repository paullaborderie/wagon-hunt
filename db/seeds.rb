# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# TODO: Destroy by hand (rails db:drop)
# Product.destroy_all
# User.destroy_all

boris = User.create!(email: "boris@lewagon.org", password: "testtest")
seb = User.create!(email: "seb@lewagon.org", password: "testtest")

kudoz = Product.create!(user: boris, name: "Kudoz", url: "http://getkudoz.com", tagline: "Tinder for job search", category: "tech", facebook_url: "https://www.facebook.com/getkudoz/?fref=ts", twitter_url: "https://twitter.com/GetKudoz")
uslide = Product.create!(user: boris, name: "uSlide", url: "http://uslide.io", tagline: "Youtube sucks for education", category: "education", facebook_url: "https://www.facebook.com/Uslide.net/?hc_ref=SEARCH&fref=nf", twitter_url: "https://twitter.com/")
medpics = Product.create!(user: seb, name: "Medpics", url: "http://medpics.com", tagline: "Share your diagnosis", category: "tech", facebook_url: "https://www.facebook.com/medpicsapp/", twitter_url: "https://twitter.com/MedPicsApp")
le_wagon = Product.create!(user: seb, name: "Le Wagon", url: "http://lewagon.com", tagline: "We bring coding skills to creative people", category: "education", facebook_url: "https://www.facebook.com/lewagon/?fref=ts", twitter_url: "https://twitter.com/Lewagonparis")

# Upvotes?

kudoz.upvotes.create! user: boris
kudoz.upvotes.create! user: seb

le_wagon.upvotes.create! user: seb


AdminUser.create!(email: 'paul@admin.com', password: 'polosurfer', password_confirmation: 'polosurfer')
