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
pred inv8[] {
(all u,u2: (one User) {
(some p: (one (u2.posts)) {
((((p in Ad) || (p in (u.sees))) => (u2 in (u.follows))) || (u2 in (u.suggested)))
})
})
}





