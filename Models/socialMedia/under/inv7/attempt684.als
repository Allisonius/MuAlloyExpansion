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
all u,u2:User | u2 in u.suggested implies some u3:User | u3 in u.follows and u2 in u3.follows
all u:User | u not in u.suggested
all u,u2:User | u2 in u.follows implies u2 not in u.suggested
}