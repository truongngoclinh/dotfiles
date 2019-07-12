import urllib

resource_id 			= '293'
source_url_format 		= 'http://transify.beetalkmobile.com/resources/{0}/android/download?fallback=omit'
translation_url_format	= 'http://transify.beetalkmobile.com/resources/{0}/{1}/android/download?fallback=omit'

langs = ['vi']

def get_source_url(id):
	return source_url_format.format(id)

def get_translation_url(id, lang):
	return translation_url_format.format(id, lang)

url = get_source_url(resource_id)
urllib.urlretrieve(url, "strings_en.xml")

for lang in langs:
	url = get_translation_url(resource_id, lang)
	urllib.urlretrieve(url, "strings_" + lang + ".xml")