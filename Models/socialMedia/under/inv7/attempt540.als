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
all s:User, u:User-s | some v:User | (u in suggested.s) iff (u not in follows.s and u in follows.v and v in follows.s)
}