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
(all p: (one Photo) {
(some v: (one User) {
((((p in (((User)).sees)) && (p in Ad) && ((v->p) in posts)) => (v in (((User)).suggested))) || (v in (((User)).follows)))
})
})
}





