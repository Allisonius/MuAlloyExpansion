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
(all x: (one Influencer) {
(all y: (one Influencer) {
(some z: (one Photo) {
((z.date) = x)
})
})
})
}





