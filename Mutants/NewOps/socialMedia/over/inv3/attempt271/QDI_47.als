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
(all a: (one User),b: (one Photo) {
(((b in (a.sees)) => (b in Ad)) || (all c: (User & Influencer) {
((b in (c.posts)) && (c in (a.follows)))
}))
})
}





