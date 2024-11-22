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
(some u,s: (one User) {
(some f: (one User) {
(((u != f) && (f != s) && (u != s) && ((u->f) in follows) && ((f->s) in follows) && ((u->s) !in follows)) => ((u->s) in suggested))
})
})
}





