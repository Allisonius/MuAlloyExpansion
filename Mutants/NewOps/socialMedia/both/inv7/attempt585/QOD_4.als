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
(all u,x: (one User) {
((((u->((User))) in follows) && ((x->((User))) in follows) && ((x->u) !in follows) && (u != x)) <=> ((u->x) in suggested))
})
}





