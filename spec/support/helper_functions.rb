def freeze_time(time = Time.zone.now)
  # round time to get rid of nanosecond discrepancies between ruby time and
  # postgres time
  time = time.round
  Timecop.freeze(time) { yield(time) }
end

def login_as(user)
  session[:remember_token] = user.id
end
