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
((all a: (one Ad) {
(one u: (one Influencer) {
((u->a) in posts)
})
}) && (all a,b: (one User) {
(all p: (one Photo) {
(((a->b) in (~follows)) => ((a->p) in sees))
})
}) && (all a,b: (one User) {
(all p: (one Photo) {
(((b->a) in follows) => ((b->p) in sees))
})
}))
}





