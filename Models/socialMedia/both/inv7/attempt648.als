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
all s : User | (all u : User | u != s and u->s in suggested implies (all follower : User | follower->s in follows and u->s not in follows))
}