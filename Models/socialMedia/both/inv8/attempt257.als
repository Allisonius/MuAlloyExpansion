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
all disj u1,u2:User | u2 not in u1.follows   implies u2.posts:>Ad not in u1.sees
all disj u1,u2:User | u2 not in u1.suggested implies u2.posts:>Ad not in u1.sees
}