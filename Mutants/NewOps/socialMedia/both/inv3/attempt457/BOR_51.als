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
(all x,y: (one User) {
(all z: (one Photo) {
((((x->y) in follows) && ((y->z) in posts) && (z != Ad)) => (z !in (x.sees)))
})
})
}





