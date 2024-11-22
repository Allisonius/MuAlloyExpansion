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
(all u,x,y: (one User) {
((((u->x) in follows) && ((x->y) in follows) && (no y)) <=> ((u->y) in suggested))
})
}





