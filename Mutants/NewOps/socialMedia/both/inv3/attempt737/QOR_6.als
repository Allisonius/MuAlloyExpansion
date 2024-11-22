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
((lone u,j: (one User) {
(all p: (one Photo) {
(((u->p) in sees) => ((u->j) in follows))
})
}) && (all u: (one User) {
(all i: (one Influencer) {
(all p: (one Photo) {
(((u->p) in sees) => ((u->i) in follows))
})
})
}) && (all u: (one User) {
(all a: (one Ad) {
((u->a) in sees)
})
}))
}





