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
pred inv5[] {
(some u1: (one User) {
(all inf: (one Influencer) {
((u1 != inf) => (inf in (u1.follows)))
})
})
}





