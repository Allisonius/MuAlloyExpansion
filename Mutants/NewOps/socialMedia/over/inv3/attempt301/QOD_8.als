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
(some u2: (one User) {
(all ph: (one (Photo - Ad)) {
((ph in (((User)).sees)) => ((ph in (u2.posts)) && (u2 in (((User)).follows))))
})
})
}





