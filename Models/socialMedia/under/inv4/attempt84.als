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


pred inv4{
all user : User | some ad : univ | user->ad in posts and ad in Ad implies all post : univ | user->post in posts and post in Ad
}