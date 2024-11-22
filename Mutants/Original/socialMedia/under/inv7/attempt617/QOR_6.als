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
(all u: (one User) {
(no s,f: (one User) {
(((u != f) && (f != s) && (u != s) && ((u->f) in follows) && ((f->s) in follows) && ((u->s) !in follows)) => ((s->u) in suggested))
})
})
}





