module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv8[] {
(all u1: (one User) {
(((((u1.(^follows)).posts) + (((u1.follows).suggested).posts)) & Ad) = ((u1.sees) & Ad))
})
}





