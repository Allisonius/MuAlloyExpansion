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


pred inv7{
all u,u1 : User | u in u1.follows.follows && u not in u1.follows implies u in u1.suggested
all i,i1 : Influencer | i in i1.follows.follows && i not in i1.follows implies i in i1.suggested
}