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
(all u,u2: (one User) {
(all p: (one Photo) {
((((u->p) in sees) && (p in Ad)) <=> (((u->u2) in follows) || ((u->u2) in suggested)))
})
})
}





