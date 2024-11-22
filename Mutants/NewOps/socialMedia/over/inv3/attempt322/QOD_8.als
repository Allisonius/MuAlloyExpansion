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
(all u: (one User) {
(((u->((Photo))) in sees) => ((((Photo)) !in Ad) && (some u1: (one User) {
(((u1->((Photo))) in posts) && ((u->u1) in follows))
})))
})
}





