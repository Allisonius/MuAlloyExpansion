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
(one x,y,z: (one User) {
(((y in (follows.z)) && (z in (follows.x)) && (y !in (x.follows))) => (x in (y.suggested)))
})
}





