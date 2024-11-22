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
((all u,j: (one User) {
(all p: (one Photo) {
(((u->p) in sees) => ((u->j) in follows))
})
}) && (no u: (one User) {
(all i: (one Influencer) {
(all p: (one Photo) {
(((u->p) in sees) => ((u->i) in follows))
})
})
}) && (all a: (one Ad) {
(some (sees.a))
}))
}





