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
(all p: (one (Photo - Ad)) {
(some a: (one Ad) {
((a in (u.posts)) => (p = (u.posts)))
})
})
})
}





