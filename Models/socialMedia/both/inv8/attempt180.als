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


pred inv8{
all u: User, uu: User, a: Ad | a in u.sees and a in uu.posts => uu in u.follows or uu in u.suggested
}