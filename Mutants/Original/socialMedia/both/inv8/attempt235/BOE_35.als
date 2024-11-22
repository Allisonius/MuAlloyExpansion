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
pred inv8[] {
(all u: (one User) {
(all a: (one Ad) {
(((u->a) in sees) => (one v: (one User) {
((((v->a) in posts) && (follows in (u->v))) || ((u->v) in suggested))
}))
})
})
}





