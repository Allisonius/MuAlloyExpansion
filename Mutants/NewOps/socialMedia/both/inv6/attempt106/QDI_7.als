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
pred inv6[] {
(all p: (Photo & Ad),y: (one Day) {
((y in (p.date)) => (all z: (one Influencer) {
(p in (z.posts))
}))
})
}





