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
all u : User, sug: User, followed : User | sug in u.suggested implies (sug in followed.follows and followed in u.follows and sug not in u.follows)
}