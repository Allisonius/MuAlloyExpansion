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
((all u: (one User) {
(Ad in (u.sees))
}) && (all p: (one ((((User)).sees) - Ad)) {
(some f: (one (((User)).follows)) {
((p in (f.posts)) || (p in (((User)).posts)))
})
}))
}





