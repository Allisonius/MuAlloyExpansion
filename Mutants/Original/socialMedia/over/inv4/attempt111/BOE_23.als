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
(all p: (one Photo) {
((p in (u.posts)) && (all a: (one Ad) {
(((p - a) = none) => (a in (u.posts)))
}))
})
})
}





