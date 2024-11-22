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
all u : User, sugg : u.follows.follows, foll : u.follows | foll not in sugg && u not in u.suggested && sugg in u.suggested
}