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
(all p: (one Photo) {
(all u: (one User) {
(((u->p) in sees) => ((p !in Ad) && (some u1: (one User) {
(((u1->p) = posts) && ((u->u1) in follows))
})))
})
})
}





