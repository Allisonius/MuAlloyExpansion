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
(some disj u1,u2: (one Influencer) {
(((u1 in (u2.suggested)) && (u1 in ((u2.follows).follows))) => (u1 !in (u2.follows)))
})
}





