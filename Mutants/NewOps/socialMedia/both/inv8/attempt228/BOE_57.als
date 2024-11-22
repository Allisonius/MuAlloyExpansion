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
((u in (sees.a)) => (one y: (one User) {
((((posts.a) in y) && (u in (follows.y))) || (y in (suggested.u)))
}))
})
})
}





