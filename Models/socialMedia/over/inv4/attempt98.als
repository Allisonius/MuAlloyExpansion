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
all ph : Photo | ph in Ad implies (all u1 : User | u1 -> ph in posts and u1.posts in Ad )
}