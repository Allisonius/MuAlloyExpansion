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
(all x,y,z: (one univ) {
(((x->z) !in suggested) => (((z->y) in follows) && ((y->x) in follows) && ((x->z) !in follows)))
})
}





