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
(all photo: (one Photo) {
(all i: (one Influencer) {
((date in (photo->day)) => (photo in (i.posts)))
})
})
})
}





