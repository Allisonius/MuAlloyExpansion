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
(all day: (one Day) {
(all influencer: (one Influencer) {
(some photo: (one Photo) {
((day in (photo.date)) => (photo in (influencer.posts)))
})
})
})
}





