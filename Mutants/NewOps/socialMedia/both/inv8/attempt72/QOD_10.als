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
((((User)) != ((User))) => (((((Ad)) in (((User)).posts)) && (((Ad)) in (((User)).sees))) => (((User)) in (((User)).follows))))
}





