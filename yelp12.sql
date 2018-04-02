select business.id , business.city , category.category
from business join category
on business.id = category.business_id
WHERE business.city LIKE 'Las vegas' AND category LIKE 'Food'
