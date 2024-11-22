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


pred inv5{
all i : Influencer, u : User | (u in follows.i) && (u not in suggested.u) && (i not in suggested.i)
}