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
((all a: (one Ad) {
(a in (User.sees))
}) && (all p: (one (Photo - Ad)) {
(some u1,u2: (one User) {
(((p in (u2.posts)) && (p in (u1.sees))) => (u2 in (u1.follows)))
})
}))
}





