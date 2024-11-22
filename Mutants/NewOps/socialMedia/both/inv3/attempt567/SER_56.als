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
(all u: (one User) {
(some p: (one (Photo - Ad)) {
(((u->p) in sees) => (some u2: (one Day) {
(((u2->p) in posts) && ((u->u2) in follows))
}))
})
})
}





