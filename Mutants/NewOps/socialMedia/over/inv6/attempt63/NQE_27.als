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
(one p: (one Photo) {
(all i: (one Influencer) {
(all d: (one Day) {
(some (((i.posts).date) & d))
})
})
})
}





