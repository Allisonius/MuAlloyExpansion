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
all u : User |
all u2 : User |
(u2 in u.follows.follows && u2 != u && u2 not in u.follows) => u2 in u.suggested
all u1, u2 : User | u1 != u2 => u1 not in u2.suggested
}