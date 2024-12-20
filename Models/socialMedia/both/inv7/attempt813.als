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
all user1, user2 : User |
user1->user2 in follows and some user3:User | user2->user3 in follows and user1->user3 not in follows implies user1->user3 in suggested



all user1, user2 : User |
user1->user2 in follows and some user3:User | user2->user3 in follows and user1->user3 in follows implies user1->user3 not in suggested
}