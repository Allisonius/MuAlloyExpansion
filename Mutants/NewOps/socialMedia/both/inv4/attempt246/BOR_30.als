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
(all u: (one User) {
(some a: (one Ad) {
((a != (u.posts)) => (all p: (one Photo) {
((p in (u.posts)) => (p in Ad))
}))
})
})
}





