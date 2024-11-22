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
(some a: (one Ad) {
((a in (((User)).sees)) => ((a in ((((User)).follows).posts)) || (a in ((((User)).suggested).posts))))
})
}





