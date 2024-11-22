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
(all u: (one User) {
(((sees.a) in u) => (some y: (one User) {
((a in (y.posts)) && ((y in (follows.u)) || (y in (suggested.u))))
}))
})
})
}





