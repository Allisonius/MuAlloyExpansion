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
(all x: (one User) {
(some p1: (Ad - Photo) {
((p1 in (x.posts)) => (all p2: (one Photo) {
((p2 in (x.posts)) && (p2 in Ad))
}))
})
})
}





