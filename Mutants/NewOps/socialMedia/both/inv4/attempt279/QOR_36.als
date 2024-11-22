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
pred inv4[] {
(all x: (one User) {
(some y: (one Photo) {
(((y in (x.posts)) && (y in Ad)) => (lone p: (one Photo) {
((p in (x.posts)) => (p in Ad))
}))
})
})
}





