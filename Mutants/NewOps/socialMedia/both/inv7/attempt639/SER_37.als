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
(((z->x) in suggested) => (some y: (one Influencer) {
(((x->y) in follows) && ((y->z) in follows) && ((x->z) !in follows) && (x != y) && (x != z))
}))
})
}





