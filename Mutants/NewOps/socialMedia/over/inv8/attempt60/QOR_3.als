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
(lone x: (one User) {
(all a: (one (x.sees)) {
((a in ((x.follows).posts)) || (a in ((x.suggested).posts)))
})
})
}





