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
(all u: (one User),p: (one Photo),p2: (one Photo) {
(((p in Ad) || ((u->p) in posts)) => (p2 in Ad))
})
}





