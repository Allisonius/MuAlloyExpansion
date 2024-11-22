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
(all v,u: (one User),a: (one Ad) {
(((((v->a) in sees) && ((u->a) !in posts)) => ((v->u) in follows)) || ((v->u) in suggested))
})
}





