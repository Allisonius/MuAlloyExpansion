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
(all x: (one User) {
(all x2: (one User) {
(all p: (one Photo) {
(((p in (x.sees)) && ((x2 in x) || (x2 in (x.suggested)))) => (p in Ad))
})
})
})
}





