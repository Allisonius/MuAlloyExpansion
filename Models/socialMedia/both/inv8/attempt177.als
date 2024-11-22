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
all u,u2 :User | some p:u2.posts |  p in Ad and p in u.sees implies  u2 in u.follows or u2 in u.suggested
}