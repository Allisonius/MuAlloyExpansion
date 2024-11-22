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
(some u2: (one User) {
(((((User))->((User))) in suggested) => (((((User))->u2) in follows) && ((u2->((User))) in follows) && ((((User))->((User))) !in follows)))
})
}





