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
(all influencer: (one univ) {
((influencer in Ad) => (all day: (one univ) {
(some photo: (one univ) {
(((photo->day) in date) && ((influencer->photo) in posts))
})
}))
})
}





