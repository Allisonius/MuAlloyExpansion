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
(all p1: (one Photo) {
(all ad: (one Ad) {
((u1 in (u2.follows)) => ((p1 in (u1.sees)) && (p1 in (u2.posts)) && (p1 != ad)))
})
})
})
}





