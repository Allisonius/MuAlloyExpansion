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
all u: User | (u.sees&Ad) in (u.follows.posts&Ad)
all u: User | (u.sees&Ad) in (u.suggested.posts&Ad)

all a: Ad | all u: User | u->a in sees implies some z: User | (u->z in follows or u->z in suggested) and (z->a in posts)
}