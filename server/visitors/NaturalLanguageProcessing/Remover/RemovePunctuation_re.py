"""
string = "Hello $#! People   Whitespace 7331"
''.join(e for e in string if e.isalnum())
'HelloPeopleWhitespace7331'


import re
re.sub('[^A-Za-z0-9]+', '', "Hello $#! People   Whitespace 7331")
'HelloPeopleWhitespace7331'
"""