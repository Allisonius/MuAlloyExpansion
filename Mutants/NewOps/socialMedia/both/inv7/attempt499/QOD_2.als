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
(((((User))->((User))) in suggested) => (all z: (one User) {
(((z->((User))) in follows) && ((z->((User))) in follows) && (!((((User))->((User))) in follows)))
}))
}





