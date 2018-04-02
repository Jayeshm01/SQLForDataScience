select new_cor,count(new_cor)
from (select CASE
WHEN (fans < 125)  AND  (useful > 1308 OR funny > 1178) THEN 'LOW'
WHEN (fans < 125)  AND  ((useful > 436 AND useful < 1308) OR (funny > 393 AND funny > 1178)) THEN 'MEDIUM'
WHEN (fans < 125) AND (useful < 436 OR funny < 393) THEN 'STRONG'
WHEN (fans > 125 AND fans < 375)  AND  (useful > 1308 OR funny > 1178) THEN 'MEDIUM'
WHEN (fans > 125 AND fans < 375)  AND  ((useful > 436 AND useful < 1308) OR (funny > 393 AND funny > 436)) THEN 'STRONG'
WHEN (fans > 125 AND fans < 375) AND (useful < 436 OR funny < 393) THEN 'MEDIUM'
WHEN (fans > 375)  AND  (useful > 1308 OR funny > 1178) THEN 'STRONG'
WHEN (fans > 375)  AND  ((useful > 436 AND useful < 1308) OR (funny > 393 AND funny > 1178)) THEN 'MEDIUM'
WHEN (fans > 375) AND (useful < 436 OR funny < 393) THEN 'LOW'
END as new_cor
from user)
group by new_cor
