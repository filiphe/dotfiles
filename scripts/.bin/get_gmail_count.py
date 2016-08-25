#!/usr/bin/env python3

import requests
import os
import feedparser
import sys

# KNOWN FEEDS
# ###############
# ALL_MAIL ^all
# DRAFTS ^r
# INBOX ^i
# INBOX_CATEGORY_FORUMS ^sq_ig_i_group
# INBOX_CATEGORY_PRIMARY ^sq_ig_i_personal
# INBOX_CATEGORY_PROMOTIONS ^sq_ig_i_promo
# INBOX_CATEGORY_SOCIAL ^sq_ig_i_social
# INBOX_CATEGORY_UPDATES ^sq_ig_i_notification
# PRIORITY_INBOX ^iim
# SENT ^f
# SPAM ^s
# STARRED ^t
# TRASH ^k

with open(os.path.expanduser('~') + os.sep + '.gmail-app-password', 'r') as f:
    secret = f.readline()

response = requests.get('https://mail.google.com/mail/feed/atom/^all',
                        auth=('filip.hesslund@gmail.com', secret))
feed = feedparser.parse(response.text)
mail_count = feed['feed']['fullcount']

if mail_count is '0':
    sys.stdout.write("no unread emails")
elif mail_count is '1':
    sys.stdout.write("{0} unread email".format(mail_count))
else:
    sys.stdout.write("{0} unread emails".format(mail_count))
