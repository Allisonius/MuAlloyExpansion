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
(all u: (one User),a: (one Ad) {
(((u->Ad) in sees) => (some u2: (one User) {
((posts in (u2->a)) && (((u->u2) in follows) || ((u->u2) in suggested)))
}))
})
}





