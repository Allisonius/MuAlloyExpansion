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
(all disj u1,u2: (one User) {
(all dif: (one ((u1.follows) - (u2.follows))) {
((u2 in (u1.sees)) => (dif in (u1.suggested)))
})
})
}





