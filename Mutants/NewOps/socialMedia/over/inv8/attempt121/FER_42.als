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
(all u: (one User),u2: (one User),u3: (one User),a: (one Ad) {
((a in (u.suggested)) => (((a in (u2.posts)) && (u2 in (u.follows))) || ((a in (u3.posts)) && (u3 in (u.suggested)))))
})
}





