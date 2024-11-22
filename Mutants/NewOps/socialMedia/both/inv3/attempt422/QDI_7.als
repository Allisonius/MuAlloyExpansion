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
(all a: (Ad + Photo),u,u2: (one User),p: (one Photo) {
(((a in (u.sees)) && ((u2.posts) in (u.sees))) => (u2 in (u.follows)))
})
}





