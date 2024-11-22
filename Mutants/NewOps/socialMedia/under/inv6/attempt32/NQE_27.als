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
(some p: (one Photo) {
(all d: (one Day) {
(all x: (one Influencer) {
(p in (x.posts))
})
})
})
}





