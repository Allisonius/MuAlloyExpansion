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
((all u1,u2: (one Photo) {
(all p: (one Photo) {
((p !in Ad) => (((u1->u2) in follows) && ((u1->p) in sees) && ((u2->p) in posts)))
})
}) && (all u3: (one User) {
(all p2: (one Photo) {
((p2 in Ad) => ((u3->p2) in sees))
})
}))
}





