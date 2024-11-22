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
(all z: (one User) {
(all x: (one (z.suggested)) {
(some y: (one (User - z)) {
((y in (z.follows)) && (x in (y.(~follows))) && (x != y) && (x != z))
})
})
})
}





