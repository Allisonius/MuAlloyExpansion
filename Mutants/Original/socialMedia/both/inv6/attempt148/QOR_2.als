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
(no influencer: (one univ) {
((influencer in Influencer) => (some photo: (one univ) {
(((influencer->photo) in posts) && (some day: (one univ) {
((photo->day) in date)
}))
}))
})
}





