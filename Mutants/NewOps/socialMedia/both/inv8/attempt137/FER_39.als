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
(all u,y: (one User),a: (one Ad) {
((((u->a) in sees) && ((y->a) in sees)) => (((u->y) in follows) || ((u->y) in suggested)))
})
}





