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
(some ad: (one Ad) {
(all p: (one Photo) {
((((u->ad) in posts) && ((u->p) in suggested)) => (p in Ad))
})
})
})
}





