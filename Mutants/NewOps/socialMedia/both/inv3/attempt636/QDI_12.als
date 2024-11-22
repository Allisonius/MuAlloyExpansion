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
((all u1,u2: (one User),p: (Photo + Ad) {
(((u1 in (sees.p)) && (u2 in (posts.p))) => (u1 in (follows.u2)))
}) && (all u: (one User) {
(all a: (one Ad) {
(u in (sees.a))
})
}))
}





