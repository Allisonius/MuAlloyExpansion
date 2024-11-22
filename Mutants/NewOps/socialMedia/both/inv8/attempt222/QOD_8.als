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
(all x2: (one User) {
(all p: (one Photo) {
(((p in (((User)).sees)) && ((x2 in (((User)).follows)) || (x2 in (((User)).suggested)))) => (p in Ad))
})
})
}





