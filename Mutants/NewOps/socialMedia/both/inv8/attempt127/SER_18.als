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
(all x,u: (one User),a: (one Photo) {
(((((x->a) in sees) && ((u->a) in posts)) => ((x->u) in follows)) || ((x->u) in suggested))
})
}





