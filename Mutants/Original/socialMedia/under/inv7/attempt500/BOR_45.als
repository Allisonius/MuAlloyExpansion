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
(all x,y: (one User) {
((y in (x.suggested)) => ((x !in (follows.y)) && (some z: (one User) {
((y in (z.follows)) && (x != (follows.z)) && (z != x))
})))
})
}





