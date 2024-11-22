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
(all p: (one Photo) {
(all v: (one User) {
((((p in (u.sees)) && (p in Ad) && ((v->p) !in posts)) => (v in (u.suggested))) || (v in (u.follows)))
})
})
})
}





