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
(all p: (one (u.posts)) {
(one a: (one Ad) {
((p = a) => (all a1: (one Ad) {
(a in (u.sees))
}))
})
})
})
}





