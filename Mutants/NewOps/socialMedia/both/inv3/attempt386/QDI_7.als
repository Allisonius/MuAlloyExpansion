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
pred inv3[] {
(all p: (Photo & Ad) {
(all u,y: (one User) {
(((p in (u.sees)) && (p in (y.posts))) => (y in (u.follows)))
})
})
}





