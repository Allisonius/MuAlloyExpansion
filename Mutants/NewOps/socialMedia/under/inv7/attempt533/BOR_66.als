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
(all u: (one User),s: (one User) {
(some f: (one User) {
((((u->s) in suggested) && ((u->s) !in follows)) => (((u->f) = follows) && ((f->s) in follows)))
})
})
}





