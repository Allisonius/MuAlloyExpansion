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
(all x,u: (one User),p: (one Ad) {
(((x->p) in sees) => (((x->u) in follows) && ((u->p) in posts)))
})
}





