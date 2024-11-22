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
((all u1,u2: (one User) {
(all p: (one Photo) {
(((u1->p) in sees) => ((p in (u2.follows)) && (u2 in (u1.follows))))
})
}) && (all u: (one User) {
(all a: (one Ad) {
(a in (u.sees))
})
}))
}





