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
(some u: (one User) {
(all p: (one Photo) {
(one d: (one Day) {
(p in (u.posts))
})
})
})
}





