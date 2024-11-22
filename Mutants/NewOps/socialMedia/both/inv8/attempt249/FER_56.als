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
(all u1,u2: (one User) {
(all a: (one Ad) {
(((u1 != u2) && (a in (u2.posts)) && (a in (u1.sees)) && (a !in (u1.sees))) => ((u2 in (u1.follows)) || (u2 in (u1.suggested))))
})
})
}





