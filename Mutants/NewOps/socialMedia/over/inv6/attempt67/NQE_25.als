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
(all x: (one Day) {
(some z: (one Photo) {
(all y: (one Influencer) {
(((z.date) = x) && (z in (posts.y)))
})
})
})
}





