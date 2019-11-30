import requests
import subprocess
import os


URL = 'https://app.ochapos.com/api/package/upload'
EMAIL = 'ngoclinh.truong@ved.com.vn'
COUNTRY_VN = "vn"
DESCRIPTION = "This is auto upload ipa from jenkins job"
APP_ID_VN = 2
APP_ID_TH = 9
APP_KEY_VN = "oxdtpqwmzvmlmjmw"
APP_KEY_TH = "sqyqnqmleacvyndi"

def upload_ipa(params):
    country = params['country']
    if country  == COUNTRY_VN:
        app_id = APP_ID_VN
        app_key = APP_KEY_VN
    else:
        app_id = APP_ID_TH
        app_key = APP_KEY_TH

    description = params['description']
    payload = {
        'email': EMAIL,
        'description': description if description else DESCRIPTION,
        'app_id': app_id,
        'app_key': app_key
    }

    output_dir = params['output_dir'] 
    ipa_path = output_dir + "/" + get_ipa_name(output_dir)
    print("Ipa path for uploading: " + ipa_path)
    try:
        fin = open(ipa_path, 'rb')
        files = {'package': fin}
        result = requests.post(URL, data=payload, files=files)
        print("App ocha uploading result: " + result.text)
    finally:
        fin.close()

def get_ipa_name(ipa_path):
    command="ls -lrt " + ipa_path + " | grep '.ipa' | awk '{print $NF}'"
    job = subprocess.Popen(command, cwd = os.getcwd(), shell = True, stdout = subprocess.PIPE, stderr = subprocess.PIPE)
    output, error = job.communicate()
    print("Output: " + output)
    print("Error: " + error)
    output = output.strip().split('\n  ')[0]
    return output

