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
(some y,z: (one User) {
(((((User))->z) in suggested) => (((((User))->y) in follows) && ((y->z) in follows) && ((((User))->z) !in follows)))
})
}





