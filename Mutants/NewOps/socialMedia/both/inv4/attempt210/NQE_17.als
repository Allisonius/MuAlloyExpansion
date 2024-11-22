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
(some p: (one Ad) {
(all u: (one User) {
(all p1: (one (u.posts)) {
(((u->p) in posts) => (p1 = Ad))
})
})
})
}





