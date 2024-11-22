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
pred inv8[] {
(all x,y: (one User),z: (one Ad) {
((((x->z) in sees) && ((y->z) in posts)) => ((follows in (x->y)) || ((x->y) in suggested)))
})
}





