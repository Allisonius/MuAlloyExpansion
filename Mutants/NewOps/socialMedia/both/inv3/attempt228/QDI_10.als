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
((one x: (User & Influencer) {
((x.sees) !in (x.posts))
}) && (all y: (one User) {
(Ad in (y.sees))
}))
}





