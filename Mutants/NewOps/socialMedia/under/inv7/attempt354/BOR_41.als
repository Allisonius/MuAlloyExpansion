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
pred inv7[] {
(all u,y,z: (one User) {
(((y in (u.follows)) && (z in (y.follows)) && (z != (u.follows)) && (u != z)) => (z in (u.suggested)))
})
}





