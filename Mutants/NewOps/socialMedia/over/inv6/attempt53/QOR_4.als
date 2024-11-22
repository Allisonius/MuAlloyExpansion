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
(one x: (one Day) {
(all y: (one Influencer) {
(some z: (one (posts.y)) {
((z.date) = x)
})
})
})
}





