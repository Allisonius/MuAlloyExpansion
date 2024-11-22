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
((((univ)) in Influencer) => (all day: (one univ) {
(some photo: (one univ) {
(((photo->day) in date) && ((((univ))->photo) in posts))
})
}))
}





