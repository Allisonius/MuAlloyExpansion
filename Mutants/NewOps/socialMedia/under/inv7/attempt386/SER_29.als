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
(all u: (one User),f: (one User) {
(some s: (one Photo) {
(((u->s) in suggested) => (((u->f) in follows) && ((f->s) in suggested)))
})
})
}





