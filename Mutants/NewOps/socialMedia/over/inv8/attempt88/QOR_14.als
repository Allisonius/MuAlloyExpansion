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
(all u,y: (one User) {
(no a: (one Ad) {
((u in (sees.a)) => (((u in (follows.y)) || (u in (suggested.y))) && (y in (posts.a))))
})
})
}





