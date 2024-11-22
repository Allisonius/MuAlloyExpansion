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
(all u1: (one Day) {
(some u2: (one (u1.follows)) {
(((u2.follows) - (u1.follows)) in (u1.suggested))
})
})
}





