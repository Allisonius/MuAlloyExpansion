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
(all u: (one User) {
(one p: (one Ad) {
(((p in (u.posts)) && (p in Ad)) => (all x: (one Photo) {
((x in (u.posts)) => (x in Ad))
}))
})
})
}





