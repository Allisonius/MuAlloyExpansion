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
(lone u: (one User),p: (one (Photo - Ad)) {
((p in (u.sees)) => (some v: (one (User - u)) {
((p in (v.posts)) && (v in (u.follows)))
}))
})
}





