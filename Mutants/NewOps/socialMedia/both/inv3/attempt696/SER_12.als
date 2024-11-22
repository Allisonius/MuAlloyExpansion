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
((all a: (one User) {
(all u: (one User) {
(((u->a) !in posts) => ((u->a) in sees))
})
}) && (all p: (one (Photo - Ad)) {
(all u1,u2: (one User) {
((((u1->p) in sees) && ((u2->p) in posts)) => ((u1->u2) in follows))
})
}))
}





