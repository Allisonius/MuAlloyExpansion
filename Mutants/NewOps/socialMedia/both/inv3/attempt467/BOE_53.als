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
(all x,y: (one univ) {
((((x->y) in sees) => (y in Ad)) || (all z: (one univ) {
((posts in (z->y)) => ((x->z) in follows))
}))
})
}





