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
(all p: (one Ad) {
(all u: (one User) {
((p in (u.sees)) <=> (no x: (one User) {
((u in (follows.x)) && (p in (posts.x)))
}))
})
})
}





