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
(one day: (one Day) {
(all influencer: (one Influencer) {
(all photo: (one Photo) {
((photo in (influencer.posts)) => (day in (photo.date)))
})
})
})
}





