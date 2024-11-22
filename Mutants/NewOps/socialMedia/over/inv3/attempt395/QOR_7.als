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
((one u1,u2: (one User),p: (one Photo),a: (one Ad) {
(((p != a) && (u1 in (posts.p)) && (u2 in (sees.p))) => (u2 in (follows.u1)))
}) && (all u: (one User),p: (one Photo) {
((u in (sees.p)) && (p in Ad))
}))
}





