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
pred inv3[] {
((some var123456 : Ad { ((User.sees) = (((((User.follows).posts) + var123456) + (User.posts)) - (User.suggested)))}) && ((Influencer.sees) = ((((Influencer.follows).posts) + Ad) + (Influencer.posts))))
}





