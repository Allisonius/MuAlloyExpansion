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
(all p: (one Photo) {
(((p in (((User)).posts)) && (p in Ad)) => (all p1: (one Photo) {
((p1 in (((User)).posts)) && (p1 in Ad))
}))
})
}





