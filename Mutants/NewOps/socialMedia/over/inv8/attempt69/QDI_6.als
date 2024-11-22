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
(all u: (User - Influencer),a: (one Ad) {
((a in (u.sees)) <=> ((a in ((u.follows).posts)) || (a in ((u.suggested).posts))))
})
}





