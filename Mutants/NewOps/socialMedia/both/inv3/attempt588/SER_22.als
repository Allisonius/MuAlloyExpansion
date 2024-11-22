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
(all u1,u2: (one User) {
(all p1: (one Influencer) {
(all ad: (one Ad) {
(((p1 in (u1.sees)) && (p1 in (u2.posts)) && (p1 != ad)) => (u2 in (u1.follows)))
})
})
})
}





