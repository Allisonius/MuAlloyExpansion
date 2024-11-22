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
((all u,z: (one User) {
(all p: (one Photo) {
(all a: (one Ad) {
((((z->p) in posts) && (p != a) && (u != z) && ((u->p) in sees)) => ((u->z) in follows))
})
})
}) && (all u,f: (one User) {
(all a: (one Influencer) {
(((u->a) in sees) && ((f->a) in posts) && (f != u))
})
}))
}





