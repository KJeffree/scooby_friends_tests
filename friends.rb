def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
    if food == snack
      return true
    end
  end
  return false
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, named_friend)
  person[:friends].delete(named_friend)
end

def add_all_money(group)
  total = 0
  for person in group
    total += person[:monies]
  end
  return total
end

def lend_money(lender, lendee, money)
  lender[:monies] -= money
  lendee[:monies] += money
end
