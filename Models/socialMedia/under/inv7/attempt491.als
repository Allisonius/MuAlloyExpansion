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
all u: User | all fu: u.follows | all ffu: fu.follows |
(ffu not in u.follows) and (ffu != u) implies (ffu in u.suggested)
}