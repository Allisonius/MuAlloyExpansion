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
pred inv7[] {
(((((User))->((User))) in suggested) => (some followed: (one univ) {
(((((User))->followed) in follows) && ((followed->((User))) in follows) && (!((((User))->((User))) in follows)))
}))
}





