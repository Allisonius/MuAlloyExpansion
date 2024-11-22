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
(all u,x,y: (one (User + Influencer)) {
((((u->x) in follows) && ((x->y) !in follows) && (u != x) && (u != y) && (x != y) && ((u->y) !in follows)) <=> ((u->y) in suggested))
})
}





