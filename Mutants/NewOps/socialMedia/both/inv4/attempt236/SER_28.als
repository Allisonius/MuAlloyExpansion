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
(some p: (one (Photo & Influencer)) {
(all p1: (one (u.posts)) {
(((u->p) in posts) => (p1 = Ad))
})
})
})
}





