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
(some y,z: (one User) {
(((x->z) in suggested) => (((x->y) in follows) && ((y->z) in follows) && ((x->z) !in sees)))
})
})
}





