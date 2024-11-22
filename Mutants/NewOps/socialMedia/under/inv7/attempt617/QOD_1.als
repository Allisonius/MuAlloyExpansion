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
(some s,f: (one User) {
(((((User)) != f) && (f != s) && (((User)) != s) && ((((User))->f) in follows) && ((f->s) in follows) && ((((User))->s) !in follows)) => ((s->((User))) in suggested))
})
}





