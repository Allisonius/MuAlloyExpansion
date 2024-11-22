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
(some ad: (one Ad),user: (one User) {
((ad in (user.sees)) => ((ad in ((user.follows).posts)) && (ad in ((user.suggested).posts))))
})
}





