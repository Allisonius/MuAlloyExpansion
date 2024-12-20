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
((all p: (one Photo),u1: (one User) {
((p !in Ad) && (((u1->p) in follows) => (all u2: (one User) {
(((u2->p) in posts) && ((u1->u2) in follows))
})))
}) && (all p: (one Ad),u: (one User) {
((u->p) in sees)
}))
}





