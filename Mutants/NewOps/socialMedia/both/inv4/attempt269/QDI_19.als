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
(all u1: (one User) {
(one add: (Ad + Photo) {
((add in (u1.posts)) => (all ph: (one Photo) {
((ph in (u1.posts)) => (ph in Ad))
}))
})
})
}





