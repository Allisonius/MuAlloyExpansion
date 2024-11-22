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
(all x0,x1: (one User) {
(some x3: (one User) {
((x1 in (x0.suggested)) => ((x1 !in (x0.follows)) && (x0 != x1) && (x1 in (x3.follows)) && (x3 in (x0.follows)) && (x1 in (x3.sees))))
})
})
}





