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
(all p: (one Photo),u: (one Day),u1: (one User) {
(((p !in Ad) && ((u->p) in sees)) => (((u->u1) in follows) && ((u1->p) in posts)))
})
}





