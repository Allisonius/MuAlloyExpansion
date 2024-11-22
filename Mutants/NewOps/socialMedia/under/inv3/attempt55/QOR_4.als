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
(some x: (one User) {
(all y: (one User) {
(all z: (one Photo) {
((((y->x) in follows) && ((z->y) in posts)) => ((z->x) in sees))
})
})
})
}





