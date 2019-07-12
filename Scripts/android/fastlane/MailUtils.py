import json
import smtplib

USER = "mobile.autobot@ved.com.vn"
PWD = "mo123456"

DEV_RECEPIENTS = 'ngoclinh.truong@ved.com.vn'
RELEASE_RECEPIENTS = ['ngoclinh.truong@ved.com.vn','mobile.autobot@ved.com.vn']

def send_email(params):
    print("send_email: %s" % (params))

    recipient = params['recipient']
    build_type = params['build_type']
    build_comment = params['build_comment']
    last_commit_msg = params['git_last_commit']

    if not last_commit_msg:
        last_commit_msg = 'NA'

    if not recipient:
        recipient = 'ngoclinh.truong@ved.com.vn'
    elif recipient == 'all':
        recipient = RELEASE_RECEPIENTS
    else:
        recipient = [recipient, DEV_RECEPIENTS]

    # email info
    FROM = USER
    TO = recipient if isinstance(recipient, list) else [recipient]
    SUBJECT = _build_subject(build_comment)
    TEXT = _build_body(build_type, last_commit_msg)

    # deliver message
    message = """From: %s\nTo: %s\nSubject: %s\n\n%s
    """ % (FROM, ", ".join(TO), SUBJECT, TEXT)

    print("TO: %s" % TO)
    try:
        server = smtplib.SMTP_SSL("smtp.gmail.com", 465)
        server.ehlo()
        server.login(FROM, PWD)
        server.sendmail(FROM, TO, message)
        server.close()
        print 'successfully sent the mail'
    except:
        print "failed to send mail"

def _build_subject(build_comment):
    if build_comment:
        if "appstore" in build_comment:
            build_comment = "Release"
        return '[%s] OchaCRM Android build' % build_comment
    else:
        return 'OchaCRM Android build'

def _build_body(build_type, last_commit_msg):
    body = """Hi all,

Please find the latest build of the OchaCRM Android:
- https://app.ochapos.com/
- http://jenkins.mobile.sea.vn/view/ocha/job/ocha-crm-android/

Last commit message: 
%s

Best Regards,

Ocha Team. """ % last_commit_msg

    return body
