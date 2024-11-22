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
(all x,x1: (one Influencer) {
((x1 in (x.suggested)) => (some x2: (one User) {
((x1 != x) && (x2 != x1) && (x1 in (x2.follows)) && (x2 in (x1.follows)))
}))
})
}





