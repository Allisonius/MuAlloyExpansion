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
(no x: (one User) {
(all y: (one (x.sees)) {
((y !in Ad) => (some u: (one User) {
((u in (x.follows)) && (y in (posts.u)))
}))
})
})
}





