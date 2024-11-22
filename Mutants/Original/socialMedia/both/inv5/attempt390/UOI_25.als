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
pred inv5[] {
(all i: (one Influencer),u: (one (User - Influencer)) {
((i !in u) => ((i in (u.(^follows))) && (u !in (i.follows))))
})
}





