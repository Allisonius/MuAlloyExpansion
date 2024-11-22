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
(all disj u,u2: (one User) {
(all p: (one Photo) {
(((p !in Ad) && ((u->p) in sees) && ((u2->p) in posts)) => ((u->u2) = follows))
})
})
}





