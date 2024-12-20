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
all u1,u2 : User | u1 in u2.suggested iff (some u3 : User | u1 in u3.follows && u3 in u2.follows) &&
(u1 != u2)
}