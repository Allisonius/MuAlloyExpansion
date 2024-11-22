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
pred inv3[] {
(some x: (one User) {
(some p: (one Influencer) {
((p !in Ad) && (p in ((x.follows).posts)) && (p in (x.sees)))
})
})
}





