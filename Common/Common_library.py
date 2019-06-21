#
#Custom Library to add Python Methods
#

#Method to construct URL by taking the parameter
def construct_url(env):
    if(env == 'qa'):
        return 'http://a.testaddressbook.com/'
    else:
        return 'http://www.testaddressbook.com/'
