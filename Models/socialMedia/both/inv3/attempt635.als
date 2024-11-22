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
all u:User, u2:User, p:Photo-Ad | ((u in sees.p and u2 in posts.p) implies u in follows.u2) or (all u:User, a:Ad | u in sees.a)
}