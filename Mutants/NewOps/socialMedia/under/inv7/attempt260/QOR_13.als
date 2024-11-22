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
(no y: (one (x.suggested)) {
((y !in x) && (some z: (one (x.follows)) {
(y in (z.follows))
}))
})
})
}





