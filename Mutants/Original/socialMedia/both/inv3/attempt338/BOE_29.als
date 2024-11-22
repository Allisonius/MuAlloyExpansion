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
pred inv3[] {
(all x,z: (one User) {
(all y: (one Photo) {
((((x->z) in follows) && (posts in (z->y))) => ((x->y) in sees))
})
})
}





