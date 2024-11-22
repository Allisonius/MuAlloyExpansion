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
((all u1: (one Ad) {
(all p: (one Photo) {
((((u1->p) in sees) && (p !in Ad)) => (some u2: (one User) {
(((u1->u2) in follows) && ((u2->p) in posts))
}))
})
}) && (all a: (one Ad),u1: (one User) {
((u1->a) in sees)
}))
}





