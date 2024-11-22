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
all u:User | Ad-((u.follows+u.suggested).posts&Ad) not in u.sees and ((u.follows+u.suggested).posts&Ad) in u.sees
}