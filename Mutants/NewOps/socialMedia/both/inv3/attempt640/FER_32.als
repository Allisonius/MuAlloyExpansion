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
pred inv3[] {
(all user: (one User),photo: (one Photo) {
(((photo in (user.suggested)) => (photo in Ad)) || (all followed: (one User) {
((photo in (followed.posts)) => (followed in (user.follows)))
}))
})
}





