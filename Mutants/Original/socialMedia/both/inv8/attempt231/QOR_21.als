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
(all a: (one Ad) {
((u in (sees.a)) => (lone y: (one User) {
(((a in (y.posts)) && (u in (follows.y))) || (y in (suggested.u)))
}))
})
})
}





