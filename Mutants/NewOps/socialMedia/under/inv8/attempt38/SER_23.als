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
(all a: (one Ad) {
(all u: (one Day) {
(((u->a) in sees) => (some p: (one User) {
((((p->a) in posts) => ((u->p) in follows)) || ((u->p) in suggested))
}))
})
})
}





