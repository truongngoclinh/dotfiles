import requests
import subprocess
import os


URL = 'https://app.ochapos.com/api/package/upload'
EMAIL = 'ngoclinh.truong@ved.com.vn'
COUNTRY_VN = "vn"
DESCRIPTION = "This is auto upload apk from jenkins job"
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
    apk_path = output_dir + "/" + get_apk_name(output_dir)
    print("Ipa path for uploading: " + apk_path)
    try:
        fin = open(apk_path, 'rb')
        files = {'package': fin}
        result = requests.post(URL, data=payload, files=files)
        print("App ocha uploading result: " + result.text)
    finally:
        fin.close()

def get_apk_name(apk_path):
    command="ls -lrt " + apk_path + " | grep '.apk' | awk '{print $NF}'"
    job = subprocess.Popen(command, cwd = os.getcwd(), shell = True, stdout = subprocess.PIPE, stderr = subprocess.PIPE)
    output, error = job.communicate()
    output = output.strip().split('\n  ')[0]
    return output

