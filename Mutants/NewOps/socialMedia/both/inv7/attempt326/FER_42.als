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
((((x->y) in follows) && ((y->z) in posts) && ((x->z) !in follows)) => ((z->x) in suggested))
})
}





