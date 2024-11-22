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
pred inv4[] {
((((((univ))->((univ))) in posts) && (((univ)) in Influencer) && (((univ)) in Ad)) => (all z: (one univ) {
(((((univ))->z) in posts) => (z in Ad))
}))
}





