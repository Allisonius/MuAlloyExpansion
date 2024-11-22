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
(all x,z: (one User) {
(some y: (one User) {
((x in (z.suggested)) => ((y in (z.sees)) && (x in (y.follows)) && (x !in (z.follows)) && (x != z)))
})
})
}





