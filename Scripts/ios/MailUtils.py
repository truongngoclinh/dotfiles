import json
import smtplib

USER = "mobile.autobot@ved.com.vn"
PWD = "mo123456"

DEFAULT_RECEPIENTS = 'ngoclinh.truong@ved.com.vn'
RELEASE_RECEPIENTS = ['ngoclinh.truong@ved.com.vn','mobile.autobot@ved.com.vn']

BEEFLIGHT_URL_DEV = "https://beeflight.garenanow.com/apps/398"
BEEFLIGHT_URL_RELEASE = "https://beeflight.garenanow.com/apps/400"

def send_email(params):
    print("send_email: %s" % (params))

    recipient = params['recipient']
    build_type = params['build_type']
    build_comment = params['build_comment']
    last_commit_msg = params['git_last_commit']

    if not recipient:
        recipient = DEFAULT_RECEPIENTS
    elif recipient == 'all':
        recipient = RELEASE_RECEPIENTS
    else:
        recipient = [recipient, DEFAULT_RECEPIENTS]

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
        #server.starttls()
        server.login(FROM, PWD)
        server.sendmail(FROM, TO, message)
        server.close()
        print 'successfully sent the mail'
    except:
        print "failed to send mail"

def _build_subject(build_comment):
    if build_comment:
        if "release" in build_comment:
            build_comment = "Release"
        return '[%s] OchaCRM iOS build' % build_comment
    else:
        return 'OchaCRM iOS build'

def _build_body(build_type, last_commit_msg):
    if 'release' in build_type:
        build_type = "[Release] "
        url = BEEFLIGHT_URL_RELEASE
    else:
        build_type = ""
        url = BEEFLIGHT_URL_DEV
    body = """Hi all,

Please find the latest build of the OchaCRM iOS in this link below:

Build %s: 
- https://app.ochapos.com/
- %s

Last commit message: %s

Best Regards,

Ocha Team. """ % (build_type, url, last_commit_msg)

    return body
