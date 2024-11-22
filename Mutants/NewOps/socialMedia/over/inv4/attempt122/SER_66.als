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
(all ph: (one Photo) {
((ph in Ad) => (all u1: (one User) {
(all ph2: (one Photo) {
(((u1->ph) in posts) && ((u1->ph2) in posts) && (ph2 in Influencer))
})
}))
})
}





