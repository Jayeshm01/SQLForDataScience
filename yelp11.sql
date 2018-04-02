SELECT MAX(norm_useful) as max_use,MAX(norm_funny) as max_fun,
AVG(norm_funny),AVG(norm_useful),MIN(norm_funny),MIN(norm_useful)
from (SELECT fans,useful/fans as norm_useful,
      funny/fans as norm_funny, useful,funny
      from user)
order by fans desc
