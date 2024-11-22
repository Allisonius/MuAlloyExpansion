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
(no u,x: (one User),p: (one (Photo - Ad)) {
((((u->p) in sees) && ((x->p) in posts)) => ((u->x) in follows))
})
}





