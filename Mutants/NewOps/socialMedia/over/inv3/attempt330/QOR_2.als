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
pred inv3[] {
(no u: (one User) {
(all p: (one (u.sees)) {
(one u1: (one (u.follows)) {
((p !in (u.posts)) && ((p in Ad) || ((p in (u1.posts)) && (u1 in (u.follows)))))
})
})
})
}





