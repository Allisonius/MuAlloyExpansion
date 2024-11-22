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
((all u,u2: (one User) {
(all p: (one Photo) {
(((u != u2) && ((u->u2) in follows) && (sees in (u->p))) => ((u2->p) in posts))
})
}) && (all u: (one User) {
(all ad: (one Ad) {
(((u->ad) in sees) => ((u->ad) !in posts))
})
}))
}





