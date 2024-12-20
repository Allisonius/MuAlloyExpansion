sig User {
	follows : set User,
	sees : set Photo,
	posts : set Photo,
	suggested : set User
}

sig Influencer extends User {}

sig Photo {
	date : one Day
}
sig Ad extends Photo {}

sig Day {}


pred inv3{
all user : User, photo : Photo | (photo in user.sees) implies (photo in Ad) or
(all followed : User | (photo in followed.posts) implies (user->followed in follows))
}