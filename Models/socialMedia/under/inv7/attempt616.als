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
all u : User | some s, f : User | u != f and f != s and u != s && u -> f in follows && f -> s in follows && u -> s not in follows => u -> s in suggested
}