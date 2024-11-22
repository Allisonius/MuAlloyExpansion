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
((all photo: (one Photo) {
(((photo in (((User)).posts)) && (photo in (((User)).sees))) => (((User)) in (((User)).follows)))
}) && (some user: (one User) {
(Ad in (user.sees))
}))
}





