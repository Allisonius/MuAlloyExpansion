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
(((((User))->((Ad))) in sees) => (all u2: (one User) {
(((((User))->u2) in follows) || ((((User))->u2) in suggested))
}))
}





