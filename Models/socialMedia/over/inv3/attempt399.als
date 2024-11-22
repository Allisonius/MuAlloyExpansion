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
all user : univ | user in User and all photo : univ | user->photo in posts implies (photo in Ad) or
(some follower : univ | follower->photo in posts and user->follower in follows)
}