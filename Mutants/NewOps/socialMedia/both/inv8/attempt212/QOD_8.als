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
(one ad: (one Ad) {
((ad in ((User - Influencer).sees)) => (one u2: (one (((User - Influencer).follows) + ((User - Influencer).suggested))) {
(ad in (u2.posts))
}))
})
}





