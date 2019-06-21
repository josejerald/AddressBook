#
#Custom Library to add Python Methods
#

#Method to construct URL
def construct_url(env):
    if(env == 'qa'):
        return 'http://a.testaddressbook.com/'
    else:
        return 'http://www.testaddressbook.com/'