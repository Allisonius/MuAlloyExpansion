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
(all u: (one Photo) {
(some pos: (one (u.posts)) {
((pos in Ad) => (all ph: (one (u.posts)) {
(ph in Ad)
}))
})
})
}





