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
(all u: (one User),p1: (one Photo),a1: (one Ad) {
((((u->p1) in posts) && (p1 = a1)) => (all p2: (one Photo),a2: (one Ad) {
(((u->p2) != posts) => (p2 = a2))
}))
})
}





