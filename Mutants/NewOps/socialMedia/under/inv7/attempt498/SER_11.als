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
(all x,z: (one Ad) {
(((x in (z.suggested)) && (x !in (z.follows)) && (z != x)) => (some y: (one User) {
((y in (z.follows)) && (x in (y.follows)))
}))
})
}





