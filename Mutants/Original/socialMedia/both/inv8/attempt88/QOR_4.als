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
(one u: (one User) {
(all p: (one (u.posts)) {
((Ad in p) => ((Ad in (u.sees)) || (Ad in ((u.suggested).posts))))
})
})
}





