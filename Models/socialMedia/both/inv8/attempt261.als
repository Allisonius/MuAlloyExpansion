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
all u, f: User | some ad : Ad | u -> f in follows && f -> ad in posts => u -> ad in sees
all u, s: User | some ad : Ad | u -> s in suggested && s -> ad in posts => u -> ad in sees
}