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
(all x: (one User) {
(some y: (one User) {
(all z: (one User) {
((z in (x.suggested)) => ((z in (y.follows)) && (y in (x.follows))))
})
})
})
}





