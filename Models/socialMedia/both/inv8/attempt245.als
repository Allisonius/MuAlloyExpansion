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
all usr1, usr2 : User | some ad : Ad | usr2->ad in posts and usr1->usr2 not in follows or usr1->usr2 not in suggested implies usr1->ad not in sees
}