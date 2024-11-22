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
(all u: (one User),a: (one Ad) {
(some u1: (one User) {
(((u.sees) in a) => ((a in (u1.posts)) && (u != u1) && ((u1 in (u.follows)) || (u1 in (u.suggested)))))
})
})
}





