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
(all u: (one Day) {
((a in (u.sees)) => (a in ((((u.follows).posts) + ((u.suggested).posts)) + (u.posts))))
})
})
}





