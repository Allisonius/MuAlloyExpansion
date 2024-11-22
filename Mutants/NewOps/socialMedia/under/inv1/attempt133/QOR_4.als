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
pred inv1[] {
(one p: (one Photo) {
(some u1,u2: (one User) {
(((p in (u1.posts)) && (p in (u2.posts))) => (u1 = u2))
})
})
}





