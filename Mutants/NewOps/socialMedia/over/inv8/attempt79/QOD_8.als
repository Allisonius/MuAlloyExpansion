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
(all a: (one (((User)).sees)) {
((a in Ad) <=> ((a in ((((User)).follows).posts)) || (a in ((((User)).suggested).posts))))
})
}





