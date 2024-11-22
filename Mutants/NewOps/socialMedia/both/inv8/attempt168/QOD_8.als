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
pred inv8[] {
(some ad: (one Ad) {
((ad in (((User)).sees)) => (one u2: (one ((((User)).follows) + (((User)).suggested))) {
(ad in (u2.posts))
}))
})
}





