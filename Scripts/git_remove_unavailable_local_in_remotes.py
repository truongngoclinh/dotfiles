import subprocess
import os

GIT_PATH = '/usr/bin/git'

def get_remotes_branches(input):
    result = []
    for item in input:
        if item.startswith('remote'):
            result.append(item)

    return result

def get_local_branches(input):
    result = []
    for item in input:
        if not item.startswith('remote'):
            result.append(item)

    return result

def get_remove_branches(input):
    remotes = get_remotes_branches(input)
    locals = get_local_branches(input)

    result = []
    print("Branches to remove:")
    for l in locals:
        if not is_main_branch(l):
            for r in remotes:
                if l not in r:
                    result.append(l)
                    print("%s" % l)
                    break

    return result

def is_main_branch(input):
    mains = ['master', 'dev', 'test', 'develop']
    for m in mains:
        if m in input:
            return True

commands = subprocess.Popen('%s branch --all' % GIT_PATH, cwd = os.getcwd(), shell = True, stdout = subprocess.PIPE, stderr = subprocess.PIPE)
output, error = commands.communicate()
output = output.strip().split('\n  ')

remove_branches = get_remove_branches(output)

print("----------------")
for b in remove_branches:
    print("Removing %s" % b)
    cmd = '%s branch -D %s' % (GIT_PATH, b)
    p = subprocess.Popen(cmd, cwd = os.getcwd(), shell = True)
    p.wait()



