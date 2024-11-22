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
((all u1,u2: (one Day),p: (one Photo),a: (one Ad) {
(((p != a) && (u1 in (posts.p)) && (u2 in (sees.p))) => (u2 in (follows.u1)))
}) && (all a: (one Ad) {
(all u: (one User) {
(u in (sees.a))
})
}))
}





